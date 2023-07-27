import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pylon/connection/crypto_util.dart';

import '../constants.dart';

import '../connection/connection.dart';
import '../connection/consts.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

import 'package:pointycastle/pointycastle.dart' as pc;
import 'package:pointycastle/asymmetric/oaep.dart' as pc;
import 'package:pointycastle/asymmetric/rsa.dart' as pc;
import 'package:pointycastle/digests/sha256.dart' as pc;
import 'package:pointycastle/signers/rsa_signer.dart' as pc;

import 'package:encrypt/encrypt.dart' as enc;

class ChatRoute extends StatefulWidget {
  const ChatRoute(
      {required this.chatId,
      required this.chatName,
      this.recipientId,
      super.key});

  final int chatId;
  final String chatName;
  final int? recipientId;

  @override
  State<StatefulWidget> createState() => _ChatRouteState();
}

class Message {
  final int id;
  final int userId;
  final int content;
  final int timestamp;

  const Message({
    required this.id,
    required this.userId,
    required this.content,
    required this.timestamp,
  });
}

class _ChatRouteState extends State<ChatRoute> {
  int? _chatId;
  String? _chatName;
  int? _recipientId;
  pc.RSAPublicKey? _recipientPublicKey;
  Uint8List? _chatSharedKey;

  final _messageFieldController = TextEditingController();

  final _messages = <Message>[];

  var _initialized = false;

  final _random = Random.secure();

  void _setup() {
    _initialized = true;

    _chatId = widget.chatId;
    _chatName = widget.chatName;
    _recipientId = widget.recipientId;

    Connection().receiveListener = _messageHandler;
    Connection().sendPort.send(ClientMessage(
        requestPublicKey: ClientMessage_RequestPublicKey(id: _recipientId)));

    if (_chatId != 0) {
      Connection().sendPort.send(ClientMessage(
          requestChatSharedKey:
              ClientMessage_RequestChatSharedKey(chatId: _chatId)));
    }
  }

  void _messageHandler(dynamic message) {
    if (message is! ServerMessage) return;
    if (message.hasSendPublicKey()) {
      _recipientPublicKey = enc.RSAKeyParser()
          .parse(message.sendPublicKey.publicKey) as pc.RSAPublicKey;
    } else if (message.hasSendChatSharedKey()) {
      _decryptChatSharedKey(message.sendChatSharedKey.key);
      Connection().sendPort.send(ClientMessage(
          getMessages: ClientMessage_GetMessages(chatId: _chatId, count: 10)));
    } else if (message.hasSendMessages()) {
      _decryptMessages(message.sendMessages.messages);
    }
  }

  void _decryptChatSharedKey(final String key) {
    final rsaDecrypter = pc.OAEPEncoding.withSHA256(pc.RSAEngine())
      ..init(false,
          pc.PrivateKeyParameter<pc.RSAPrivateKey>(Connection().privateKey!));
    _chatSharedKey =
        rsaProcessInBlocks(rsaDecrypter, Uint8List.fromList(key.codeUnits));
  }

  void _createChat() {
    var key = Uint8List(aesKeyLength);
    for (int i = 0; i < key.length; i++) {
      key[i] = _random.nextInt(256);
    }

    final chatCreationMessage = ClientMessage_CreateChat();
    chatCreationMessage.name = '';

    // Hardcoded for DMs only
    {
      final encrypter = pc.OAEPEncoding.withSHA256(pc.RSAEngine())
        ..init(true,
            pc.PublicKeyParameter<pc.RSAPublicKey>(Connection().publicKey!));
      final encrypedKey = rsaProcessInBlocks(encrypter, key);
      chatCreationMessage.selfKey = String.fromCharCodes(encrypedKey);
    }

    {
      final encrypter = pc.OAEPEncoding.withSHA256(pc.RSAEngine())
        ..init(
            true,
            pc.PublicKeyParameter<pc.RSAPublicKey>(
                _recipientPublicKey as pc.RSAPublicKey));
      final encryptedKey = rsaProcessInBlocks(encrypter, key);
      chatCreationMessage.otherKeys.add(ClientMessage_CreateChat_IdKeyPair(
          id: _recipientId, key: String.fromCharCodes(encryptedKey)));
    }

    Connection().sendPort.send(ClientMessage(createChat: chatCreationMessage));
  }

  void _sendMessage() {
    // TODO: Maybe hide send button when field is empty
    if (_messageFieldController.text.isEmpty || _chatSharedKey == null) {
      return;
    }

    final text = _messageFieldController.text;

    final signer = pc.RSASigner(pc.SHA256Digest(), '0609608648016503040201')
      ..init(true,
          pc.PrivateKeyParameter<pc.RSAPrivateKey>(Connection().privateKey!));
    final signature =
        signer.generateSignature(Uint8List.fromList(text.codeUnits));

    var iv = Uint8List(aesBlockSize);
    for (int i = 0; i < iv.length; i++) {
      iv[i] = _random.nextInt(256);
    }

    final aesEncrypter = pc.PaddedBlockCipher("AES/CBC/PKCS7")
      ..init(
        true,
        pc.PaddedBlockCipherParameters(
          pc.ParametersWithIV(pc.KeyParameter(_chatSharedKey!), iv),
          null,
        ),
      );
    final ciphertext = aesEncrypter.process(Uint8List.fromList(text.codeUnits));

    final message = ClientMessage(
      sendMessage: ClientMessage_SendMessage(
        chatId: _chatId,
        content: String.fromCharCodes(ciphertext),
        iv: String.fromCharCodes(iv),
        signature: String.fromCharCodes(signature.bytes),
      ),
    );
    Connection().sendPort.send(message);

    _messageFieldController.clear();
  }

  void _decryptMessages(List<ServerMessage_SendMessages_Message> messages) {
    // TODO: Better strategy
    // This is just testing (more or less)
    _messages.clear();

    for (final message in messages) {
      final aesDecrypter = pc.PaddedBlockCipher("AES/CBC/PKCS7")
        ..init(
          false,
          pc.PaddedBlockCipherParameters(
            pc.ParametersWithIV(pc.KeyParameter(_chatSharedKey!),
                Uint8List.fromList(message.iv.codeUnits)),
            null,
          ),
        );
      final output =
          aesDecrypter.process(Uint8List.fromList(message.content.codeUnits));

      final signature =
          pc.RSASignature(Uint8List.fromList(message.signature.codeUnits));
      final verifier = pc.RSASigner(pc.SHA256Digest(), '0609608648016503040201')
        ..init(
            false,
            pc.PublicKeyParameter<pc.RSAPublicKey>(
                message.userId == _recipientId
                    ? _recipientPublicKey!
                    : Connection().publicKey!));

      try {
        verifier.verifySignature(
            Uint8List.fromList(message.content.codeUnits), signature);
      } on ArgumentError {
        continue;
      }

      print(String.fromCharCodes(output));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) _setup();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chatName),
        backgroundColor: Constants.secondaryBackgroundColor,
      ),
      backgroundColor: Constants.mainBackgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Constants.secondaryBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: TextField(
                      controller: _messageFieldController,
                      minLines: null,
                      maxLines: null,
                      decoration: const InputDecoration(
                        isDense: true,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: FloatingActionButton(
                      onPressed: _chatId == 0 ? _createChat : _sendMessage,
                      backgroundColor: Constants.mainColor,
                      child: const Icon(
                        Icons.send,
                        color: Constants.secondaryBackgroundColor,
                        size: 20.0,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

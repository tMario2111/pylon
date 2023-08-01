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

import 'package:fixnum/fixnum.dart' as fixnum;

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
  final String content;
  final fixnum.Int64 timestamp;

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
          getMessages: ClientMessage_GetMessages(chatId: _chatId, count: 100)));
    } else if (message.hasSendMessages()) {
      _decryptMessages(message.sendMessages.messages);
    } else if (message.hasSendLatestMessage()) {
      final chatMessage = message.sendLatestMessage.message;
      final output = _decryptMessage(chatMessage);
      if (output != null) {
        _messages.insert(
            0,
            Message(
                id: chatMessage.id,
                userId: chatMessage.userId,
                content: output,
                timestamp: chatMessage.timestamp));
        setState(() {});
      }
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

  String? _decryptMessage(ServerMessage_ChatMessage message) {
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
          pc.PublicKeyParameter<pc.RSAPublicKey>(message.userId == _recipientId
              ? _recipientPublicKey!
              : Connection().publicKey!));
    try {
      verifier.verifySignature(
          Uint8List.fromList(message.content.codeUnits), signature);
    } on ArgumentError {
      return null;
    }

    return String.fromCharCodes(output);
  }

  void _decryptMessages(List<ServerMessage_ChatMessage> messages) {
    // TODO: Better strategy
    // This is just testing (more or less)
    _messages.clear();

    for (final message in messages) {
      final output = _decryptMessage(message);
      if (output != null) {
        _messages.add(Message(
          content: output,
          id: message.id,
          userId: message.userId,
          timestamp: message.timestamp,
        ));
      }
    }
    setState(() {});
  }

  String _formatDateTime(DateTime date) {
    return '${date.hour}:${date.minute} ${date.day}.${date.month}.${date.year}';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: _messages.length,
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  _messages[index].userId != _recipientId
                                      ? 'You '
                                      : '${widget.chatName} ',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  _formatDateTime(
                                      DateTime.fromMillisecondsSinceEpoch(
                                          _messages[index].timestamp.toInt() *
                                              1000)),
                                  style: const TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Text(
                              _messages[index].content,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10.0,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Constants.secondaryBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
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
        ],
      ),
    );
  }
}

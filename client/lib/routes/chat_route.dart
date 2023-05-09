import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../constants.dart';

import '../connection/connection.dart';
import '../connection/consts.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

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

class _ChatRouteState extends State<ChatRoute> {
  int? _chatId;
  String? _chatName;
  int? _recipientId;

  var _initialized = false;

  void _setup() {
    _initialized = true;

    _chatId = widget.chatId;
    _chatName = widget.chatName;
    _recipientId = widget.recipientId;

    Connection().receiveListener = _messageHandler;
    Connection()
        .sendPort
        // .send(ClientMessage_RequestPublicKey(id: widget.recipientId!));
        .send(ClientMessage(
            requestPublicKey:
                ClientMessage_RequestPublicKey(id: _recipientId)));
  }

  void _messageHandler(dynamic message) {
    if (message is! ServerMessage) return;
    if (message.hasSendPublicKey()) {
      ;
    }
  }

  void _createChat() {
    final random = Random.secure();

    var key = Uint8List(aesKeyLength);
    for (int i = 0; i < key.length; i++) {
      key[i] = random.nextInt(256);
    }

    final chatCreationMessage = ClientMessage_CreateChat();
    chatCreationMessage.name = '';
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
                    child: const TextField(
                      minLines: null,
                      maxLines: null,
                      decoration: InputDecoration(
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
                      onPressed: _createChat,
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

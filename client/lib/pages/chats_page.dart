import 'package:flutter/material.dart';

import 'package:pylon/proto/servermessage.pb.dart';
import 'package:pylon/proto/clientmessage.pb.dart';

import '../connection/connection.dart';

import '../constants.dart';

import '../routes/chat_route.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var chats = <ServerMessage_SendChatList_Chat>[];

  _ChatsPageState() {
    Connection().receiveListener = (dynamic message) {
      if (message is! ServerMessage) return;
      if (message.hasSendChatList()) {
        chats = message.sendChatList.chats;
        setState(() {});
      }
    };

    Connection().sendPort.send(
          ClientMessage(
            requestChatList: ClientMessage_RequestChatList(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: ((context, index) {
            return Container(
              height: 80.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Constants.mainColor,
                    width: 1.5,
                  ),
                ),
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 80,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chats[index].recipientUsername,
                          style: const TextStyle(fontSize: 25.0),
                        ),
                        const Text(
                          "Placeholder message!",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatRoute(
                          chatId: chats[index].id,
                          chatName: chats[index].recipientUsername),
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

import '../connection/connection.dart';

import '../constants.dart';

import '../routes/chat_route.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<StatefulWidget> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  var users = <ServerMessage_SendUserList_User>[];

  _PeoplePageState() {
    Connection().receiveListener = (dynamic message) {
      if (message is! ServerMessage) return;
      if (message.hasSendUserList()) {
        users = message.sendUserList.users;
        setState(() {});
      }
    };

    Connection().sendPort.send(
          ClientMessage(
            requestUserList: ClientMessage_RequestUserList(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Container(
              height: 30.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Constants.mainColor,
                    width: 1.5,
                  ),
                ),
              ),
              child: InkWell(
                child: Center(
                  child: Text(
                    users[index].username,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatRoute(
                        chatId: 0,
                        chatName: users[index].username,
                        recipientId: users[index].id,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

import '../connection/connection.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (final user in users) Text(user.username),
          ],
        ),
      ),
    );
  }
}

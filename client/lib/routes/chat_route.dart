import 'package:flutter/material.dart';

import '../constants.dart';

class ChatRoute extends StatefulWidget {
  const ChatRoute({required this.chatId, required this.chatName, super.key});

  final int chatId;
  final String chatName;

  @override
  State<StatefulWidget> createState() => _ChatRouteState();
}

class _ChatRouteState extends State<ChatRoute> {
  @override
  Widget build(BuildContext context) {
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
                      onPressed: () {},
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

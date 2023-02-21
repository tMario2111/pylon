import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';

import '../connection/connection.dart';

import 'login_route.dart';

class StartupRoute extends StatefulWidget {
  const StartupRoute({super.key});

  @override
  State<StatefulWidget> createState() => _StartupRouteState();
}

class _StartupRouteState extends State<StartupRoute> {
  _StartupRouteState() {
    Connection().receiveListener = (message) {
      if (message is SendPort) {
        Connection().sendPort = message;
      }
      if (message is IsConnected) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const LoginRoute())));
      }
    };
    Connection();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

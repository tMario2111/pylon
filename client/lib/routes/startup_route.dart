import 'dart:async';

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
    Connection();
    _finishLoading();
  }

  void _finishLoading() async {
    while (!Connection().isConnected()) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if (mounted) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const LoginRoute())));
    }
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

import 'package:flutter/material.dart';

import '../connection/connection.dart';

class StartupRoute extends StatefulWidget {
  const StartupRoute({super.key});

  @override
  State<StatefulWidget> createState() => _StartupRouteState();
}

class _StartupRouteState extends State<StartupRoute> {
  _StartupRouteState() {
    _startupTasks();
  }

  void _startupTasks() async {
    Connection.init();
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

import 'package:flutter/material.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({super.key});

  @override
  State<StatefulWidget> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is the login page"),
      ),
    );
  }
}

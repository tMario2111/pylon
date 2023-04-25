import 'package:flutter/material.dart';
import 'package:pointycastle/pointycastle.dart';

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

import '../connection/connection.dart';
import '../connection/crypto_util.dart';

import '../constants.dart';
import '../misc.dart';

import '../widgets/pylon_text_field.dart';
import '../widgets/pylon_button.dart';

import 'register_route.dart';
import 'main_route.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({super.key});

  @override
  State<StatefulWidget> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _emailErrorMessage;
  String? _passwordErrorMessage;

  _LoginRouteState() {
    Connection().receiveListener = _messageHandler;
  }

  void _messageHandler(dynamic message) {
    if (message is! ServerMessage) {
      return;
    }
    if (message.hasConfirmLogIn()) {
      final successful = message.confirmLogIn.successful;
      if (!successful) {
        _emailErrorMessage = 'Incorrect email or password';
        _passwordErrorMessage = _emailErrorMessage;
        setState(() {});
      } else {
        Connection().id = message.confirmLogIn.id;
        print(Connection().id); // TODO: Remove
        _logIn();
      }
    }
  }

  void _logIn() {
    Connection()
        .sendPort
        .send(generateKeysFromPassword(_passwordController.text));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MainRoute(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Constants.mainColor,
              child: const Center(
                child: Text(
                  "PYLON",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'EMAIL',
                      controller: _emailController,
                      errorBorder: _emailErrorMessage != null,
                      onFocusChange: (focused) {
                        _emailErrorMessage = null;
                        _passwordErrorMessage = null;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'PASSWORD',
                      controller: _passwordController,
                      obscureText: true,
                      errorBorder: _passwordErrorMessage != null,
                      onFocusChange: (focused) {
                        _passwordErrorMessage = null;
                        _emailErrorMessage = null;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    height: 50.0,
                    child: PylonButton(
                      label: 'Log in',
                      onPressed: () {
                        Connection().sendPort.send(
                              ClientMessage(
                                logIn: ClientMessage_LogIn(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterRoute(),
                              ),
                            );
                            Connection().receiveListener = _messageHandler;
                          },
                        ),
                        TextButton(
                          child: const Text('Forgot password',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          onPressed: () {
                            Misc.showSnackBar(
                                context, 'Feature not implemented yet :(');
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (_emailErrorMessage != null ||
                          _passwordErrorMessage != null)
                        Text(
                          _emailErrorMessage != null
                              ? _emailErrorMessage!
                              : _passwordErrorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

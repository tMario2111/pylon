import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';

import 'package:pointycastle/pointycastle.dart' as pc;

import 'package:pylon/proto/clientmessage.pb.dart';
import 'package:pylon/proto/servermessage.pb.dart';

import 'email_verification_route.dart';

import '../connection/connection.dart';
import '../connection/crypto_util.dart';

import '../constants.dart';

import '../widgets/pylon_text_field.dart';
import '../widgets/pylon_button.dart';

// TODO: Confirm password condition might not work as expected

class RegisterRoute extends StatefulWidget {
  const RegisterRoute({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterRouteState();
}

class _RegisterRouteState extends State<RegisterRoute> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmedPasswordController = TextEditingController();

  String? _emailErrorMessage;
  String? _usernameErrorMessage;
  String? _passwordErrorMessage;
  String? _confirmPasswordErrorMessage;

  void _messageHandler(dynamic message) async {
    if (message is! ServerMessage) {
      return;
    }
    if (message.hasAccountRegistrationResult()) {
      if (!message.accountRegistrationResult.successful) {
        if (message.accountRegistrationResult.hasEmailError()) {
          _emailErrorMessage = message.accountRegistrationResult.emailError;
        }
        if (message.accountRegistrationResult.hasUsernameError()) {
          _usernameErrorMessage =
              message.accountRegistrationResult.usernameError;
        }
        if (message.accountRegistrationResult.hasPasswordError()) {
          _passwordErrorMessage =
              message.accountRegistrationResult.passwordError;
        }
      } else {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EmailVerificationRoute(),
          ),
        );
        // Reassign the message handler
        Connection().receiveListener = _messageHandler;
      }
      setState(() {});
    }
  }

  _RegisterRouteState() {
    Connection().receiveListener = _messageHandler;
  }

  void sendAccountRegistrationMessage() {
    final publicKey = generateKeysFromPassword(_passwordController.text)
        .publicKey as pc.RSAPublicKey;

    Connection().sendPort.send(
          ClientMessage(
            accountRegistration: ClientMessage_AccountRegistration(
              email: _emailController.text,
              username: _usernameController.text,
              password: _passwordController.text,
              publicKey: encodePublicKeyToPemPKCS1(publicKey),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.mainBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6.0,
              color: Constants.mainColor,
              child: const Center(
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.0,
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
                        if (!focused) {
                          if (!EmailValidator.validate(_emailController.text)) {
                            _emailErrorMessage = 'Please enter a valid email';
                          }
                        } else {
                          _emailErrorMessage = null;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'USERNAME',
                      controller: _usernameController,
                      errorBorder: _usernameErrorMessage != null,
                      onFocusChange: (focused) {
                        _usernameErrorMessage = null;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'PASSWORD',
                      obscureText: true,
                      controller: _passwordController,
                      errorBorder: _passwordErrorMessage != null,
                      onFocusChange: (focused) {
                        _passwordErrorMessage = null;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'CONFIRM PASSWORD',
                      obscureText: true,
                      controller: _confirmedPasswordController,
                      errorBorder: _confirmPasswordErrorMessage != null,
                      onFocusChange: (focus) {
                        if (!focus &&
                            _passwordController.text !=
                                _confirmedPasswordController.text) {
                          _confirmPasswordErrorMessage =
                              "Password does not match";
                        } else {
                          _confirmPasswordErrorMessage = null;
                        }
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
                      label: "CREATE ACCOUNT",
                      onPressed: sendAccountRegistrationMessage,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (_emailErrorMessage != null)
                        Text(
                          _emailErrorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      if (_usernameErrorMessage != null)
                        Text(
                          _usernameErrorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      if (_passwordErrorMessage != null)
                        Text(
                          _passwordErrorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      if (_confirmPasswordErrorMessage != null)
                        Text(
                          _confirmPasswordErrorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

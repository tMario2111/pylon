import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';

import '../constants.dart';

import '../widgets/pylon_text_field.dart';
import '../widgets/pylon_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.backgroundColor,
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
                  const SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'USERNAME',
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'PASSWORD',
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 250.0,
                    child: PylonTextField(
                      label: 'CONFIRM PASSWORD',
                      obscureText: true,
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
                      onPressed: () {},
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
                        Text(_usernameErrorMessage!),
                      if (_passwordErrorMessage != null)
                        Text(_passwordErrorMessage!),
                      if (_confirmPasswordErrorMessage != null)
                        Text(_confirmPasswordErrorMessage!),
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

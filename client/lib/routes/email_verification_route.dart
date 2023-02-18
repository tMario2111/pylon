import 'package:flutter/material.dart';
import 'package:pylon/proto/clientmessage.pb.dart';

import '../constants.dart';
import '../misc.dart';

import '../connection/connection.dart';

import '../widgets/pylon_button.dart';
import '../widgets/pylon_text_field.dart';

class EmailVerificationRoute extends StatefulWidget {
  const EmailVerificationRoute({super.key});

  @override
  State<StatefulWidget> createState() => _EmailVerificationRouteState();
}

class _EmailVerificationRouteState extends State<EmailVerificationRoute> {
  final _verificationCodeController = TextEditingController();
  String? _verificationCodeErrorMessage;

  _EmailVerificationRouteState() {
    Connection().messageHandler = (message) {
      if (message.hasAccountRegistrationCodeResult()) {
        final result = message.accountRegistrationCodeResult;
        if (result.successful) {
          Misc.showSnackBar(
              context, "Account created successfully, please log in");
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        } else if (result.criticalError) {
          Misc.showSnackBar(context, result.error);
          Navigator.of(context).pop();
        } else {
          setState(() {
            _verificationCodeErrorMessage = result.error;
          });
        }
      }
    };
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
      backgroundColor: Constants.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Constants.mainColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "VERIFICATION CODE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "A verification code has been sent to your email adress",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            SizedBox(
              width: 250.0,
              child: PylonTextField(
                label: 'VERIFICATION CODE',
                controller: _verificationCodeController,
                errorBorder: _verificationCodeErrorMessage != null,
                verificationCodeField: true,
                onFocusChange: (focused) {
                  setState(() {
                    _verificationCodeErrorMessage = null;
                  });
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
                label: "Submit",
                onPressed: () {
                  Connection().sendMessage(ClientMessage(
                    accountRegistrationCode:
                        ClientMessage_AccountRegistrationCode(
                      code: _verificationCodeController.text,
                    ),
                  ));
                },
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            if (_verificationCodeErrorMessage != null)
              Center(
                child: Text(
                  _verificationCodeErrorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              )
          ],
        ),
      ),
    );
  }
}

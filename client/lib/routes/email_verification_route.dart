import 'package:flutter/material.dart';

import '../constants.dart';

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

  _EmailVerificationRouteState() {
    Connection().messageHandler = (message) {
      if (message.hasAccountRegistrationCodeResult()) {}
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

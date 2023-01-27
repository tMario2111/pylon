import 'package:flutter/material.dart';

import '../constants.dart';

import '../widgets/pylon_text_field.dart';
import '../widgets/pylon_button.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({super.key});

  @override
  State<StatefulWidget> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  const SizedBox(
                    width: 250.0,
                    child: PylonTextField(label: 'EMAIL'),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const SizedBox(
                    width: 250.0,
                    child: PylonTextField(label: 'PASSWORD'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 250.0,
                    height: 50.0,
                    child: PylonButton(
                      label: "Log in",
                      onPressed: () {},
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
                            "Create account",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text("Forgot password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              )),
                          onPressed: () {},
                        ),
                      ],
                    ),
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

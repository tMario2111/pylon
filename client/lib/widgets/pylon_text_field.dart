import 'package:flutter/material.dart';
import 'package:pylon/main.dart';

import '../constants.dart';

class PylonTextField extends StatelessWidget {
  const PylonTextField({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Constants.mainColor),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Constants.mainColor,
              ),
            ),
          ),
          child: const TextField(
            style: TextStyle(color: Constants.mainColor),
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
            cursorColor: Constants.mainColor,
          ),
        ),
      ],
    );
  }
}

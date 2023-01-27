import 'package:flutter/material.dart';

import '../constants.dart';

class PylonTextField extends StatelessWidget {
  const PylonTextField({
    required this.label,
    this.controller,
    this.obscureText = false,
    super.key,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;

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
          child: TextField(
            style: const TextStyle(color: Constants.mainColor),
            decoration: const InputDecoration(
              isDense: true,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
            cursorColor: Constants.mainColor,
            obscureText: obscureText,
            controller: controller,
          ),
        ),
      ],
    );
  }
}

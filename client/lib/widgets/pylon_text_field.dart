import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class PylonTextField extends StatelessWidget {
  const PylonTextField({
    required this.label,
    this.controller,
    this.obscureText = false,
    this.errorBorder = false,
    this.onFocusChange,
    this.verificationCodeField = false,
    super.key,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final bool errorBorder;
  final void Function(bool)? onFocusChange;
  final bool verificationCodeField;

  @override
  Widget build(BuildContext context) {
    final mainColor = errorBorder ? Colors.red : Constants.mainColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: mainColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: mainColor,
              ),
            ),
          ),
          child: Focus(
            onFocusChange: onFocusChange,
            child: TextField(
              style: TextStyle(
                color: mainColor,
              ),
              decoration: const InputDecoration(
                isDense: true,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              cursorColor: mainColor,
              obscureText: obscureText,
              controller: controller,
              inputFormatters: verificationCodeField
                  ? [
                      FilteringTextInputFormatter.allow(
                        RegExp('[0-9a-zA-Z]'),
                      ),
                      LengthLimitingTextInputFormatter(8),
                    ]
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}

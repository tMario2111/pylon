import 'package:flutter/material.dart';

import 'constants.dart';

class Misc {
  static void showSnackBar(BuildContext context, String content) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            content,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Constants.mainColor,
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0.0),
            ),
          ),
        ),
      );
  }
}

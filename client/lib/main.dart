import 'routes/startup_route.dart';

import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: Constants.mainColor,
          backgroundColor: Constants.secondaryBackgroundColor,
        ),
      ),
      home: const StartupRoute(),
    );
  }
}

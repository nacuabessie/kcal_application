import 'package:flutter/material.dart';
import 'package:kcal_application/SplashScreen.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'kCal';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: splashScreen(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.

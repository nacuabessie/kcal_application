import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kcal_application/onboardScreen.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => onBoard())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.green[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Center(
                    child: Text(
                  "Kcal",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 250,
                ),
                Center(
                    child: Text("ZUAMICA",
                        style: TextStyle(
                          color: Colors.white24,
                          fontSize: 30,
                        ))),
              ],
            )));
  }
}

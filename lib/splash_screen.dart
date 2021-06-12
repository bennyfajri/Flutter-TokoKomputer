import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toko_komputer/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.lightBlue),
        child: Image.asset("images/splash.png"),
      ),
    );
  }

  Future<Timer> startTimer() async {
    return Timer(Duration(seconds: 3), onDone);
  }

  void onDone() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MainScreen(),
      ),
    );
  }
}

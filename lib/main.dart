import 'package:flutter/material.dart';
import 'package:toko_komputer/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Modernist'),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:egitim/pages/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Layouts());
}

class Layouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

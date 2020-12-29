import 'package:egitim/constants.dart';
import 'package:egitim/pages/login_screen.dart';
import 'package:egitim/pages/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp() : super();

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget homeScreen = MainScreen();

  @override
  void initState() {
    super.initState();
    if (username.isEmpty && password.isEmpty) {
      debugPrint("jkksald");
      homeScreen = LoginScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen,
    );
  }
}
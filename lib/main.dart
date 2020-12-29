import 'package:egitim/color_layout.dart';
import 'package:egitim/pages/first_screen.dart';
import 'package:egitim/pages/settings_screen.dart';
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
      initialRoute: "/",
      routes: {
        "/settings": (context) => SettingsScreen(),
      },
      home: FirstScreen()
    );
  }
}

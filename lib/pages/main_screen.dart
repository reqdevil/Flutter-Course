import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: Text("Main Screen",
              style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),
    );
  }
}

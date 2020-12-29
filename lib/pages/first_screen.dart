import 'package:egitim/pages/second_screen.dart';
import 'package:egitim/pages/settings_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: RaisedButton(
            child: Text("İkinci Ekrana Git"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen())
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => SettingsScreen())
          );
        },
      ),
    );
  }
}
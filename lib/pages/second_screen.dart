import 'package:egitim/constants.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            child: Text("İkinci Ekrandan Çık"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        onPressed: () {
          Navigator.pushNamed(context, ROUTE_SETTINGS);
        },
      ),
    );
  }
}
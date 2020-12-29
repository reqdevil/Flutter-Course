import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
      ),
      body: Container(
        color: Colors.purple,
        child: Center(
          child: RaisedButton(
            child: Text("Ayarlar Ekranından Çık"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
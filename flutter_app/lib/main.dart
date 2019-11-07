import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image(
            image: AssetImage("images/dimonds.png"),
          ),
        ),
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.teal[900],
        ),
      ),
    ),
  );
}

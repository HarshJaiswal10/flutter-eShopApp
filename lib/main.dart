import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key Key}) : super(Key: Key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to 30 days flutter"),
          ),
        ),
      ),
    );
  }
}

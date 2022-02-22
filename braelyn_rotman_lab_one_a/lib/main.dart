import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Lab One Part A - Braelyn Rotman',
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2,
              wordSpacing: 3,
            )
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
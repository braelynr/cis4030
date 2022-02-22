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
        appBar: AppBar(
          title: Text(
              'Lab One Part B - Braelyn Rotman',
              style: GoogleFonts.getFont('Life Savers', fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Image.asset(
            'images/drydenthehorse.jpg',
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
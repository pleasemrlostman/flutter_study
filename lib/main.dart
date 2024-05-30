import 'package:flutter/material.dart';
// import 'package:test_prog/screen/stateful/home_screen.dart';
// import 'package:test_prog/screen/life_cycle/statefull/home_screen.dart';
// import 'package:test_prog/screen/timer/home_screen.dart';
import 'package:test_prog/screen/uandi/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'sunflower',
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 80.0,
          fontFamily: 'parisienne',
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 50.0,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    ),
    home: HomeScreen(),
  ));
}

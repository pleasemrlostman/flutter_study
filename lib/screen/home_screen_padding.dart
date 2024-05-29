import "package:flutter/material.dart";
import 'package:test_prog/const/colors.dart';

class HomeScreenPadding extends StatelessWidget {
  const HomeScreenPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 64.0,
            ),
            child: Container(
              color: Colors.blue,
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}

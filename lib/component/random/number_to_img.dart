import 'package:flutter/material.dart';

class NumberToImg extends StatelessWidget {
  final int number;

  const NumberToImg({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number
          .toInt()
          .toString()
          .split("")
          .map(
            (number) => Image.asset(
              'asset/img/$number.png',
              width: 50.0,
              height: 70.0,
            ),
          )
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_prog/layout/navigation/default_layout.dart';
import 'package:test_prog/screen/navigation/route_three_screen.dart';
import 'package:test_prog/screen/navigation/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;
  const RouteOneScreen({required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "Route One Screen",
      children: [
        Text('argument: $number'),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text("Pop"),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteTwoScreen();
                },
                settings: RouteSettings(
                  arguments: 789,
                ),
              ),
            );
          },
          child: Text("Push"),
        ),
      ],
    );
  }
}

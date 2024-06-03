import 'package:flutter/material.dart';
import 'package:test_prog/layout/navigation/default_layout.dart';
import 'package:test_prog/screen/navigation/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return DefaultLayout(
      title: "route two screen",
      children: [
        Text(
          arguments.toString(),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("route two screen"),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteThreeScreen();
                },
              ),
            );
          },
          child: Text("Push Route Three"),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/three",arguments: 1111);
          },
          child: Text("Push Route Three"),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_prog/layout/navigation/default_layout.dart';
import 'package:test_prog/screen/navigation/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "Home Screen",
      children: [
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteOneScreen(
                    number: 20,
                  );
                },
              ),
            );
            print(result);
          },
          child: Text("Push"),
        )
      ],
    );
  }
}

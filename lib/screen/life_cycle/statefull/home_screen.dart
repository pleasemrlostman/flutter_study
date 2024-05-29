import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) CodeFactoryWidget(),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
                print("클릭!");
              },
              child: Text("클릭해서 보이기/안보이기"),
            )
          ],
        ),
      ),
    );
  }
}

class CodeFactoryWidget extends StatefulWidget {
  CodeFactoryWidget({super.key}) {
    print("1) Stateful Widget Constructor");
  }

  @override
  State<CodeFactoryWidget> createState() {
    print("2) Stateful Widget Create State");
    return _CodeFactoryWidgetState();
  }
}

class _CodeFactoryWidgetState extends State<CodeFactoryWidget> {
  Color color = Colors.red;

  @override
  void initState() {
    print("3) Stateful Widget initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("4) Stateful Widget didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("5) Stateful Widget build");
    return GestureDetector(
      onTap: () {
        setState(() {
          color = color == Colors.red ? Colors.blue : Colors.red;
        });
      },
      child: Container(
        color: color,
        width: 50.0,
        height: 50.0,
      ),
    );
  }

  @override
  void deactivate() {
    print("6) Stateful Widget deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("7) Stateful Widget dispose");
    super.dispose();
  }
}
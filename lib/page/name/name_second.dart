import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/screen/getx/home_screen.dart';

class NameSecondPage extends StatelessWidget {
  const NameSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Named Second Page",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                Get.back();
              },
            ),
            OutlinedButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                Get.offAllNamed("/");
              },
            )
          ],
        ),
      ),
    );
  }
}

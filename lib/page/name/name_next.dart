import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/page/name/name_second.dart';
import 'package:test_prog/page/normal/second.dart';
import 'package:test_prog/screen/getx/home_screen.dart';

class NameNext extends StatelessWidget {
  const NameNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Named Next Page",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${(Get.arguments as User).name} 나이: ${Get.arguments?.age}"),
            OutlinedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}

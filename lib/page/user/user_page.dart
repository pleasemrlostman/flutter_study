import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/page/name/name_second.dart';
import 'package:test_prog/page/normal/second.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Page Page",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                "${Get.parameters['uid']}  ${Get.parameters['name']} ${Get.parameters['age']}"),
            OutlinedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                Get.offNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}

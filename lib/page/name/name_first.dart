import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/page/name/name_second.dart';
import 'package:test_prog/page/normal/second.dart';

class NameFirstPage extends StatelessWidget {
  const NameFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Named Frirst Page",
        ),
      ),
      body: Center(
        child: Column(
          children: [
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

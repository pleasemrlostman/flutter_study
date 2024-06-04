import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Put 으로 의존성 주입"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('의존성주입'),
          onPressed: () {
            Get.find<DependencyController>().increase();
          },
        ),
      ),
    );
  }
}


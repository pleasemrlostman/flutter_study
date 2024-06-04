import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test_prog/controller/count_controller_with_get_x.dart';
import 'package:test_prog/controller/count_controller_with_provider.dart';
import 'package:test_prog/controller/count_controller_with_reactive.dart';
import 'package:test_prog/page/state/with_get_x.dart';
import 'package:test_prog/page/state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({super.key});

  Widget _button(String id) {
    return OutlinedButton(
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase(id);
      },
      child: Text("+"),
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX"),
            Obx(
              () => Text(
                  "${Get.find<CountControllerWithReactive>().count.value}"),
            ),
            OutlinedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text("+"),
            ),
            OutlinedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text("5로 변경"),
            ),
          ],
        ),
      ),
    );
  }
}

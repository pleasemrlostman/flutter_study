import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test_prog/controller/count_controller_with_get_x.dart';
import 'package:test_prog/controller/count_controller_with_provider.dart';
import 'package:test_prog/page/state/with_get_x.dart';
import 'package:test_prog/page/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: Text("단순 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

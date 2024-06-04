import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/controller/dependency_controller.dart';
import 'package:test_prog/page/state/dependencys/get_lazy_put.dart';
import 'package:test_prog/page/state/dependencys/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Get Put"),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.LazyPut"),
              onPressed: () {
                Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder(
                    () {
                      // 얘는 실제로 컨트롤러에 접근할 때 인스턴스가 메모리에 올라간다.
                      Get.lazyPut<DependencyController>(
                        () => DependencyController(),
                      );
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(
                    () {
                      // 얘는 실제로 컨트롤러에 접근할 때 인스턴스가 메모리에 올라간다.
                      Get.putAsync<DependencyController>(
                        () async {
                          await Future.delayed(Duration(seconds: 5));
                          return DependencyController();
                        },
                      );
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.create"),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(
                    () {
                      // 얘는 실제로 컨트롤러에 접근할 때 인스턴스가 메모리에 올라간다.
                      Get.create<DependencyController>(
                        () => DependencyController(),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/controller/count_controller_with_get_x.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({super.key});

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX"),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text("${Get.find<CountControllerWithGetX>().count}");
              // return Text("${controller.count}");
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${Get.find<CountControllerWithGetX>().count}");
              // return Text("${controller.count}");
            },
          ),
          _button("first"),
          _button("second"),
          // OutlinedButton(
          //   onPressed: () {
          //     Get.find<CountControllerWithGetX>().increase();
          //   },
          //   child: Text("+"),
          // ),
        ],
      ),
    );
  }
}

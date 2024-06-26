import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/page/name/name_first.dart';
import 'package:test_prog/page/normal/first.dart';
import 'package:test_prog/page/state/dependencys/dependency_manage_page.dart';
import 'package:test_prog/page/state/reactive_state_manage_page.dart';
import 'package:test_prog/page/state/simple_state_manage_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                Get.to(NameFirstPage());
              },
            ),
            OutlinedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                Get.toNamed("/first");
              },
            ),
            OutlinedButton(
              child: Text("Argument 전달"),
              onPressed: () {
                // Get.to(NameFirstPage(),arguments: "재훈");
                // Get.toNamed("/next", arguments: "재훈");
                Get.toNamed(
                  "/next",
                  arguments: User(name: "재훈", age: 32),
                );
              },
            ),
            OutlinedButton(
              child: Text("동적 전달"),
              onPressed: () {
                // Get.to(NameFirstPage(),arguments: "재훈");
                // Get.toNamed("/next", arguments: "재훈");
                Get.toNamed("/user/28357?name=재훈&age=32");
              },
            ),
            OutlinedButton(
              child: Text("단순 상태 관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            OutlinedButton(
              child: Text("반응형 상태 관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
            OutlinedButton(
              child: Text("의존성 관리"),
              onPressed: () {
                Get.to(DependencyManagePage());
              },
            )
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}

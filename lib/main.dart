import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_prog/page/name/name_first.dart';
import 'package:test_prog/page/name/name_next.dart';
import 'package:test_prog/page/name/name_second.dart';
import 'package:test_prog/page/user/user_page.dart';
import 'package:test_prog/screen/getx/home_screen.dart';

// Imperative vs Declarative
// 명령적으로 라우팅을 할 것인가 선언적으로 할 것인가.
void main() {
  runApp(
    GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
      // initialRoute: "/",
      getPages: [
        GetPage(
            name: "/", page: () => HomeScreen(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => NameFirstPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => NameSecondPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => NameNext(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.zoom),
      ],
    ),
  );
}

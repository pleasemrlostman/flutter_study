import 'package:flutter/material.dart';
// // import 'package:test_prog/screen/stateful/home_screen.dart';
// // import 'package:test_prog/screen/life_cycle/statefull/home_screen.dart';
// // import 'package:test_prog/screen/timer/home_screen.dart';
// // import 'package:test_prog/screen/uandi/home_screen.dart';
// // import 'package:test_prog/screen/constraint/home_screen.dart';
// import 'package:test_prog/screen/random/home_screen.dart';
// import 'package:test_prog/screen/button/home_screen.dart';
import 'package:test_prog/screen/navigation//home_screen.dart';
import 'package:test_prog/screen/navigation/route_one_screen.dart';
import 'package:test_prog/screen/navigation/route_three_screen.dart';
import 'package:test_prog/screen/navigation/route_two_screen.dart';

// Imperative vs Declarative
// 명령적으로 라우팅을 할 것인가 선언적으로 할 것인가.
void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: "/",
      routes: {
        //   key -라우트 이름
        //   value - builder -> 이동하고싶은 라우트
        '/': (BuildContext context) => HomeScreen(),
        '/one': (BuildContext context) => RouteOneScreen(number: 999),
        '/two': (BuildContext context) => RouteTwoScreen(),
        '/three': (BuildContext context) => RouteThreeScreen(),
      },
    ),
  );
}

import 'package:flutter/material.dart';

void main() {
  // 플러터 앱을 실행한다.
  // import 'package:flutter/material.dart'; runApp 함수는 여기서 가져옴
  runApp(
    // MaterialApp은 항상 최상위에 위치한다.
    // Scaffold는 바로 아래에 위치한다.
    // 위젯 -> Widget

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "텍스트",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

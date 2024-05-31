import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prog/component/random/number_to_img.dart';
import 'package:test_prog/const/colors.dart';
import 'dart:math';

import 'package:test_prog/screen/random/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [888, 456, 789];
  int maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //   제목과 아이콘 버튼이 있는곳
              _Header(
                onPressed: onSettingIconPressed,
              ),
              //   숫자가 있는곳
              _Body(
                numbers: numbers,
              ),
              //   버튼이 있는곳
              _Footer(onPressed: generateRandomNumber),
            ],
          ),
        ),
      ),
    );
  }

  onSettingIconPressed() async {
    // stateless는 context에 전역적으로 접근이 불가능하지만 statefull은 가능합니다.
    // 위젯트리의 정보를 가지고 있음
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SettingScreen(
            maxNumber: maxNumber,
          );
        },
      ),
    );

    maxNumber = result;
  }

  void generateRandomNumber() {
    final rand = Random();
    final Set<int> newNumbers = {};
    while (newNumbers.length < 3) {
      final randomNumber = rand.nextInt(maxNumber);
      newNumbers.add(randomNumber);
    }
    setState(() {
      numbers = newNumbers.toList();
    });
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;

  const _Header({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "랜덤숫자 생성기",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          color: redColor,
          onPressed: onPressed,
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers;
  const _Body({super.key, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers
            .map(
              (e) => NumberToImg(number: e),
            )
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;

  const _Footer({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      child: Text("생성하기-!"),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // 텍스트
              _Top(),
              // 이미지
              _Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'U&I',
              style: textTheme.displayLarge,
            ),
            Text(
              '우리 처음 만난날',
              style: textTheme.bodyLarge,
            ),
            Text("2023-11-23", style: textTheme.bodyMedium),
            IconButton(
              iconSize: 60.0,
              color: Colors.red,
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.white,
                        height: 300.0,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          dateOrder: DatePickerDateOrder.ymd,
                          onDateTimeChanged: (DateTime date) {
                            print(date);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.favorite,
              ),
            ),
            Text('D-1', style: textTheme.bodyLarge)
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset('asset/img/middle_image.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_prog/component/random/number_to_img.dart';
import 'package:test_prog/const/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

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
              _Number(maxNumber: maxNumber),
              _Slider(
                value: maxNumber,
                onChanged: onSliderChange,
              ),
              _Button(onPressed: onSavePressed),
            ],
          ),
        ),
      ),
    );
  }

  onSliderChange(double value) {
    setState(() {
      maxNumber = value;
    });
  }

  onSavePressed() {
    Navigator.of(context).pop(
      maxNumber.toInt(),
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;
  const _Button({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text("저장"),
    );
  }
}

class _Number extends StatelessWidget {
  double maxNumber;
  _Number({super.key, required this.maxNumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: NumberToImg(
          number: maxNumber.toInt(),
        ),
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const _Slider({required this.value, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 1000,
      max: 100000,
      activeColor: redColor,
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45)), // 버튼 모서리 둥글게
      child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20, horizontal: 50), // 세로로 20 가로로 50의 padding값을 준다
          child: Text(
            text,
            style: TextStyle(fontSize: 22, color: textColor),
          )),
    );
  }
}
// Reusable Widget (React의 컴포넌트 개념이라고 생각하면 편하다)
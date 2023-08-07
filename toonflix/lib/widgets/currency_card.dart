import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount; // 이름, 통화 코드, 통화량
  final IconData icon; // 아이콘 명
  final bool isInverted; // 반전 여부
  final double order; // 0 => 0 , 1 => -20 , 2 => -40

  final blackColor = const Color(0xFF1F2123);
  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: Offset(0, order * -20),
        child: Container(
            clipBehavior: Clip.hardEdge,
            // 어떤 아이템이 overflow 되었을 때 overflow된 부분을 핸들링 할 수 있다. (hardEdge : 넘어선 부분 잘라냄)
            decoration: BoxDecoration(
                color: isInverted ? Colors.white : blackColor,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: isInverted ? blackColor : Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(amount,
                              style: TextStyle(
                                  color: isInverted ? blackColor : Colors.white,
                                  fontSize: 20)),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(code,
                              style: TextStyle(
                                  color: isInverted
                                      ? blackColor
                                      : Colors.white.withOpacity(0.8),
                                  fontSize: 20))
                        ],
                      )
                    ],
                  ),
                  Transform.scale(
                      scale: 2.2,
                      child: Transform.translate(
                        offset: const Offset(-5, 12), // x축으로 -5 y축으로 12 이동
                        child: Icon(
                          icon,
                          color: isInverted ? blackColor : Colors.white,
                          size: 88,
                        ),
                      ))
                ],
              ),
            )));
  }
}

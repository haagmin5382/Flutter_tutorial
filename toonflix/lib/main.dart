import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // material app 스타일이 cupertino 스타일 보다 낫다! (대부분이 m aterial 스타일로 한다)
    // MaterialApp에 마우스를 갖다대면 많은 member들이 있다. (class 기반)
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      // home: Text("Hello world"), Flutter에 화면 렌더링은 scaffold가 필요하다 (화면을 정렬해줌)
      home: Scaffold(
          body: SingleChildScrollView(
              // SingleChildScrollView는 스크롤 가능하게 해주는 위젯
              padding: const EdgeInsets.symmetric(
                  horizontal: 20), // 수평 방향으로 20만큼 padding 값을 준다
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // 수평(가로) 방향의 시작쪽으로 정렬
                // Row의 MainAxis는 수평(가로)방향 , Column의 MainAxis는 수직(세로)방향
                children: [
                  const SizedBox(
                    height: 80, // 맨 위에서 높이 80만큼 띄운다
                  ),
                  const Row(
                    // 요소들을 옆에 놓으려면 Row를 사용
                    mainAxisAlignment: MainAxisAlignment.end, // 화면 오른쪽으로
                    children: [
                      Column(
                        // 요소들을 서로 위아래에 놓으려면 Column을 사용
                        crossAxisAlignment:
                            CrossAxisAlignment.end, // 수평(가로) 방향의 끝쪽으로 정렬
                        children: [
                          Text(
                            "Hey, Selena",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text("Welcome Back",
                              style: TextStyle(
                                  // color: Colors.white.withOpacity(0.5),
                                  color: Color.fromRGBO(255, 255, 255, 0.8),
                                  fontSize: 18)) // 색깔과 opacity
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70, // 맨 위에서 높이 80 + 70 만큼 띄운다
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        fontSize: 22, color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 194 482 ', // $가 변수를 넣을 때 사용되므로 \으로 변수가 아님을 알림
                    style: TextStyle(
                        fontSize: 44,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ), // 20 만큼 띄우고
                  // 요소들을 서로 나란히 옆에 놓기 위해서 Row를 사용
                  const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // 나란히 있는 애들 사이를 떨어 뜨려놓음
                    children: [
                      Button(
                          text: 'Request',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // 가로 축
                    crossAxisAlignment: CrossAxisAlignment.end, // 세로 축
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                      name: "Euro",
                      code: "EUR",
                      amount: "6 248",
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      order: 0),

                  const CurrencyCard(
                      name: "Bitcoin",
                      code: "BTC",
                      amount: "9 785",
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      order: 1),

                  const CurrencyCard(
                      name: "Dollar",
                      code: "USD",
                      amount: "428",
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      order: 2),
                  // Container는 HTML의 div와 같다.
                ],
              )),
          backgroundColor: const Color(0xFF181818)),

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

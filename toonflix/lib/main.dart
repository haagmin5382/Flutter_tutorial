import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 80, // 높이
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, // 화면 오른쪽으로
                    children: [
                      Column(
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
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18)) // 색깔과 opacity
                        ],
                      )
                    ],
                  )
                ],
              )),
          backgroundColor: Color(0xFF181818)),

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

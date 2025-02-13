import 'package:flutter/material.dart';

// 메인 함수
void main() {
  // runApp 함수를 호출하여 MyApp 위젯을 실행
  runApp(const MyApp());
}

// MyApp 위젯: StatelessWidget 상태관리가 필요하지 않은 단순한 형태의 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 테마 설정
      theme: ThemeData(
        // 색상 스키마 설정
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // 머테리얼 3.0 테마 설정
        useMaterial3: true,
      ),
      // 홈 페이지 설정
      // 타이틀 파라미터 전달
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// MyHomePage 위젯: StatefulWidget 상태관리가 필요한 위젯
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // title 변수: 홈페이지의 타이틀을 저장하는 런타임 상수
  final String title;

  // createState 함수를 호출하여 MyHomePageState 객체를 생성
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// MyHomePageState 클래스: MyHomePage 위젯의 상태를 관리하는 클래스
class _MyHomePageState extends State<MyHomePage> {
  // build 함수: 위젯을 생성하는 함수
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯: 머테리얼 디자인의 기본 레이아웃 구조를 제공
    return Scaffold(
      backgroundColor: Colors.grey,
      // body 속성에 Center 위젯을 사용하여 화면 중앙에 컨텐츠를 배치
      body: Center(
        child: Container(
            width: 300,
            height: 380,
            color: Colors.white,
            child: Column(
              children: [
                _buildRow(),
                SizedBox(height: 10),
                _buildRow(),
                SizedBox(height: 10),
                _buildRow(),
              ],
            )),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        Image.network('https://picsum.photos/120/60'),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, World!',
                style: TextStyle(fontSize: 20, color: Colors.indigo)),
            Text('Dart & Flutter',
                style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
          ],
        ),
      ],
    );
  }
}
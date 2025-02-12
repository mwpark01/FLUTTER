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
  int _counter = 0;

  void _incrementCounter() {
    // setState 함수를 호출하여 상태를 변경
    setState(() {
      _counter++;
    });
  }

  // build 함수: 위젯을 생성하는 함수
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯: 머테리얼 디자인의 기본 레이아웃 구조를 제공
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title 속성에 Text 위젯을 사용하여 앱바에 표시할 텍스트를 설정
        // widget 이란 프로퍼티는 statefulwidget을 가리킴
        title: Text(widget.title),
      ),
      // body 속성에 Center 위젯을 사용하여 화면 중앙에 컨텐츠를 배치
      body: Center(
        // Column 위젯: 세로로 위젯을 배치하는 위젯 = VStack
        // child: 대부분의 위젯에는 child 속성이 있어 하나의 위젯을 배치할 수 있음
        child: Column(
          // mainAxisAlignment 속성을 사용하여 세로 정렬 옵션 설정
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment 속성을 사용하여 수직 방향인 가로 정렬 옵션 설정
          crossAxisAlignment: CrossAxisAlignment.center,
          // children 속성에 위젯을 배열로 설정하여 여러 위젯을 배치
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text 위젯: 텍스트를 표시하는 위젯, counter 변수의 값을 표시, 상태가 변경될 때마다 변경된 값으로 업데이트
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
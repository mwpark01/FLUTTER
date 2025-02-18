import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

// futurebuilder와 다르게 stream은 여러번 데이터를 받아올 수 있음
class _MyWidgetState extends State<MyWidget> {
  final StreamController<String> _streamController = StreamController<String>();

  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    _startSteam();
  }

  void _startSteam() {
    debugPrint('_startSteam');
    int count = 0;
    // StreamController를 통해 Stream을 생성
    Timer.periodic(Duration(seconds: 2), (timer) {
      count++;
      _streamController.add('데이터 $count');
      // count값이 10이면 Stream을 종료
      if (count == 10) {
        timer.cancel();
        _streamController.close();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamBuilder 예제')),
      body: StreamBuilder<String>(
        stream: _streamController.stream,
        builder: (context, snapshot) {
          return Center(child: Text('StreamBuilder 예제 : ${snapshot.data}'));
        },
      ),
    );
  }
}
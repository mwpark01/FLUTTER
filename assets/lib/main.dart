import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  // const 사용을 위해 MyApp 생성자에 key를 추가
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(titile: Text('Google Fonts')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
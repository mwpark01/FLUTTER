import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyData {
  final List<String> items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MyData data = MyData();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My Data App')),
        body: ListView.builder(
          itemCount: data.items.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(MyData().items[index]));
          },
        ),
      ),
    );
  }
}
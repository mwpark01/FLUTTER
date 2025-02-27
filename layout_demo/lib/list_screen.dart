import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> items = List<String>.generate(100, (index) => 'Item $index');
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView 예제')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
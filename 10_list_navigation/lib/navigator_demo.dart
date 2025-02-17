import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Demo'),
      ),
      // center를 지우고 SafeArea로 감싸면 상단에 여백이 생김
      // width: double.infinity, height: double.infinity로 지정
      // 
      body: Center(
        // 버튼 
        // elevation 값에 따라서 버튼의 형태가 달라짐
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
          ),
          onPressed: () {
            // 버튼 클릭 시 MyDetails 페이지로 이동(push)
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return MyDetails(itemTitle: 'January');
                },
              ),
            );
          },
          child: const Text('Go to January'),
        ),
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  const MyDetails({super.key, required this.itemTitle});

  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 버튼 클릭 시 이전 페이지로 이동(pop)
            Navigator.of(context).pop();
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
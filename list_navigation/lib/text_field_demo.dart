import 'package:flutter/material.dart';

// TextField 위젯을 사용하여 텍스트 필드를 생성합니다.
// stateless 위젯입니다.
class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return TextFieldExample();
  }
}

// TextFieldExample은 텍스트 필드와 값을 표시하는 AlertDialog를 포함하는 StatefulWidget입니다.
class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});
  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}
// _TextFieldExampleState 클래스는 TextFieldExample 클래스의 상태를 정의합니다.
class _TextFieldExampleState extends State<TextFieldExample> {
  // _controller 변수를 사용하여 TextField 위젯의 값을 제어합니다.
  final TextEditingController _controller = TextEditingController();
  // _passwordController 변수를 사용하여 비밀번호 텍스트 필드의 값을 제어합니다.
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯을 사용하여 기본적인 앱 화면 구조를 생성합니다.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // textField 위젯을 사용하여 텍스트 필드를 생성합니다.
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your username',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Enter your password',
              ),
              // obscureText 속성을 사용하여 입력한 텍스트를 숨깁니다.
              obscureText: true,
            ),
            // ElevatedButton 위젯을 사용하여 클릭 시 AlertDialog를 표시합니다.
            ElevatedButton(
              onPressed: () {
                // showDialog 함수를 사용하여 AlertDialog를 표시합니다.
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Text Field Value'),
                      content:
                          Text('The value you entered is: ${_controller.text}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Value'),
            ),
          ],
        ),
      ),
    );
  }
}
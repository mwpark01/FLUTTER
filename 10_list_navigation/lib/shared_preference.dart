import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
   _loadUsername();
  }

  void _loadUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // setState를 호출하여 화면을 다시 그립니다.
    setState(() {
      // SharedPreferences에서 사용자 이름을 가져와 텍스트 필드에 표시합니다.
      _controller.text = prefs.getString('username') ?? '';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Shared Preference Demo')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter your username',
                ),
                controller: _controller,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  // shared_preferences 패키지를 사용하여 SharedPreferences 인스턴스를 가져옵니다.
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  // SharedPreferences에 사용자 이름을 저장합니다.
                  prefs.setString('username', _controller.text);
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ));
  }
}
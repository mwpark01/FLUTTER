import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';
import 'theme_model.dart';
import 'even_odd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // provider를 여러 개 사용하게 되면 굉장히 복잡한 구조를 가지게 된다.
    // provider 안에 provider를 넣는 방식은 굉장히 복잡하다.
    // 이를 해결하기 위해 MultiProvider를 사용한다.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
        ChangeNotifierProvider(create: (context) => ThemeModel()),
      ],
      child: Consumer<ThemeModel>(
        builder: (context, themeModel, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme:
                themeModel.isLightTheme ? ThemeData.light() : ThemeData.dark(),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context, listen: false);
    final themeModel = Provider.of<ThemeModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EvenOddDisplay(),
            const Text('누른 횟수:'),
            Consumer<CounterModel>(
              builder: (context, model, child) {
                return Text(
                  '${model.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterModel.increment();
                    themeModel.toggeleTheme();
                  },
                  child: const Text('증가'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    counterModel.decrement();
                  },
                  child: const Text('감소'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
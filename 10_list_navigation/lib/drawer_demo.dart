import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drawer Demo'),
        ),
        body: Center(
          child: Text('Drawer Demo'),
        ),
        drawer: MyDrawerWidget());
  }
}

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const DrawerHeader(child: Icon(Icons.home, size: 35)),
        ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Drawer Item #1'),
            onTap: () {
              Navigator.of(context)
              // push를 사용하게 되면 이전 화면을 스택에 쌓는다. -> 메모리 관리 필요!
              // pushReplacement는 현재 화면을 교체하고 이전 화면을 버린다.
              //.pushReplacement(MaterialPageRoute(builder: (context) => DemoPageOne()));
                  .push(MaterialPageRoute(builder: (context) => DemoPageOne()));
            }),

        ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Drawer Item #2'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DemoPageTwo()));
            }),
        
        ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Drawer Item #3'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DemoPageThree()));
            }),
      ],
    ));
  }
}
class DemoPageOne extends StatelessWidget {
  const DemoPageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Page One'),
        ),
        body: Center(
          child: Text('Demo Page One'),
        ),
        drawer: MyDrawerWidget());
  }
}

class DemoPageTwo extends StatelessWidget {
  const DemoPageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Page Two'),
        ),
        body: Center(
          child: Text('Demo Page Two'),
        ),
        drawer: MyDrawerWidget());
  }
}

class DemoPageThree extends StatelessWidget {
  const DemoPageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Page Three'),
        ),
        body: Center(
          child: Text('Demo Page Three'),
        ),
        drawer: MyDrawerWidget());
  }
}
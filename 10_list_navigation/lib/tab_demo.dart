import 'package:flutter/material.dart';

// IOS 스타일의 탭바
// import 'package:flutter/cupertino.dart';

class TabDemo extends StatelessWidget {
  const TabDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Demo'),

          // AppBar의 bottom 속성에 TabBar를 지정하여 화면 상단에 탭을 표시
          // CupertinoTabBar를 사용하려면 cupertino.dart를 import
          // TabBar를 CupertinoTabBar로 변경하면 IOS 스타일의 탭바로 변경
          // 완전히 다르게 설정해야함.
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), child: Text('Tab #1')),
              Tab(icon: Icon(Icons.settings), child: Text('Tab #2')),
            ],
          ),
        ),
        // TabBarView는 TabBar와 함께 사용하여 탭을 눌렀을 때 보여줄 화면을 구성
        body: const TabBarView(
          children: [
            Center(child: Text('Tab #1')),
            Center(child: Text('Tab #2')),
          ],
        ),
      ),
    );
  }
}

// IOS 스타일의 탭바

// class TabDemo extends StatelessWidget {
//   const TabDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('Tab Demo'),
//         //trailing: ,  // 오른쪽에 추가적인 위젯 (선택 사항)
//       ),
//       child: CupertinoTabScaffold(
//           tabBar: CupertinoTabBar(
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.home),
//                 label: 'Tab #1',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.settings),
//                 label: 'Tab #2',
//               ),
//             ],
//           ),
//           tabBuilder: (BuildContext context, int index) {
//             return CupertinoTabView(
//               builder: (BuildContext context) {
//                 return Scaffold(
//                   body: Center(
//                     child: index == 0
//                         ? const Text('Tab #1')
//                         : const Text('Tab #2'),
//                   ),
//                 );
//               },
//             );
//           }),
//     );
//   }
// }
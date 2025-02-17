import 'package:flutter/material.dart';

// 그리드 뷰
import 'my_grid_view.dart';

// 리스트 뷰
import 'my_list_view.dart';

// 슬리버 리스트 뷰
// 스크롤 가능한 큰 데이터들을 효율적으로 처리
// 화면에 보이는 부분만 렌더링하여 성능 최적화 <-> 리스트 뷰(성능 저하 발생)
// 스크롤에 반응하는 위젯을 만들 때 사용 
import 'my_sliver_list_view.dart';

// 입력창 뷰
import 'text_field_demo.dart';

import 'package:list_navigation/shared_preference.dart';

import 'navigator_demo.dart';

import 'drawer_demo.dart';

import 'tab_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          // themeData의 tabBarTheme 속성을 사용하여 탭바의 색상을 변경
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.amber,
            // 탭 아래 표시 줄의 색상을 변경
            indicatorColor: Colors.amber,
          )),
      home: TabDemo(),
    );
  }
}
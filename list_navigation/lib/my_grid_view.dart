import 'package:flutter/material.dart';
class MyGridView extends StatelessWidget {
  const MyGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar에 표시할 제목
        title: const Text('GridView'),
      ),
      // GridView.builder를 사용하여 그리드 뷰를 생성
      body: Scrollbar(
          thickness: 10,
          thumbVisibility: true,
          radius: const Radius.circular(5),
          child: GridView.builder(
            // 스크롤 방향을 수직으로 설정
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              // 그리드 뷰의 레이아웃을 설정
              // 한 줄에 3개의 아이템 표시
              crossAxisCount: 3,
              // 아이템 간의 가로 간격을 10으로 설정
              crossAxisSpacing: 10,
              // 아이템 간의 세로 간격을 10으로 설정
              mainAxisSpacing: 10,
            ),
            // 총 아이템의 갯수를 30개로 설정
            itemCount: 30,
            
            // 각 아이템을 생성하는 함수
            itemBuilder: (context, index) {
              // InkWell 위젯을 사용하여 터치 이벤트를 처리합니다.
              return InkWell(
              // 아이템을 터치했을 때의 동작을 정의합니다.
              onTap: () {
                // 콘솔에 'Item $index tapped'를 출력합니다.
                debugPrint('Item $index tapped'); 
                
                // ScaffoldMessenger를 사용하여 스낵바를 표시합니다.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Item $index tapped'),
                  ),
                );
              },
              
              // 각 아이템은 Container 위젯으로 생성
              child: Container(
                // 아이템의 배경색을 설정
                color: Colors.blue[100 * (index % 9)],
                // 아이템의 텍스트를 중앙에 표시
                child: Center(
                  // 아이템의 텍스트를 표시
                  child: Text('Item $index'),
                 ),
              ),
            );
          },
        ),
      ),
    );
  }
}
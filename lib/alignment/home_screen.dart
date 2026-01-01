import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Align(
            // alignment: Alignment.topLeft, 왼쪽 위
            // alignment: Alignment.topCenter, 위쪽 중간
            // alignment: Alignment.topRight, 오른쪽 위
            // alignment: Alignment.centerLeft, 왼쪽 중간
            // alignment: Alignment.center, 중앙
            // alignment: Alignment.centerRight, 오른쪽 중간
            // alignment: Alignment.bottomLeft, 왼쪽 하단
            // alignment: Alignment.bottomCenter, 하단 중간
            // alignment: Alignment.bottomRight, 오른쪽 하단
            alignment: Alignment(0.5, -0.5), // 더 세세하게 정렬하고 싶다면 Alignment. 이 아니라 Alignment(x, y) x, y 좌표 값으로 줄 수 있음
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

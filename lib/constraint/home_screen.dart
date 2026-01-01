import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // 와 깨달았다 자신의 위치는 부모 위젯이 정하는거라서 자신에게 주는건 자식에게 전달되고 자신에게 의미가 없는거구나
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Row(
            children: [
              Container( // 그래서 만약에 바로 위에 부모 위젯이 위치를 정해주지(정렬) 않으면 자식의 사이즈, 크기는 무시가 되고 꽉 채운다 근데 Colum, Row 같은건 기본적으로 위치를 정해주기 때문에 위치를 안줘도 자식의 크기를 무시하진 않음
                height: 50,
                width: 50,
                color: Colors.blue, // 만약 자식 위젯의 크기가 무시된다면 정렬이 잘 되어있는지 확인해보기
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}) {
    print('---생성자---');
  }

  @override
  Widget build(BuildContext context) {
    print('---빌드---'); //생성자가 실행된 후 build() 함수가 실행됨

    return Scaffold(
      body: BasicsWidget(),
    );
  }
}

class BasicsWidget extends StatelessWidget {
  const BasicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}

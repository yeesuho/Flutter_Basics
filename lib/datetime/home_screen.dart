import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*
  final date = DateTime( // 날짜를 표현하는 클래스: 년은 필수 월,일,시,분,초,밀리 초,마이크로 초 = 옵셔널 옵셔널 값을 입력안할시 날, 일은 1로 나머지는 0으로 입력됨
    1992, // 년(필수)
    11, // 월
    23, // 일
    1, // 시
    1, // 분
    10, // 초
    20, // 밀리 초
    3, // 마이크로 초
  );


  final date = DateTime.utc( // utc 기준 시간으로 변경
    1992, // 년(필수)
    11, // 월
    23, // 일
    1, // 시
    1, // 분
    10, // 초
    20, // 밀리 초
    3, // 마이크로 초
  );




  final now = DateTime.now(); // 현지의 기준의 실행 시간임


  final duration = Duration( // 기간을 표현하는 클래스: 날, 시, 분, 초 , 밀리초, 마이크로 초,를 Named Parameter로 입력가능
    days: 1,
    hours: 2,
    minutes: 20,
  );
*/

  final date = DateTime(
    1992,
    11,
    23,
  );
  final duration = Duration(
    days: 1,
  );

  final date1 = DateTime(
    1992,
    11,
    23,
  );

  final date2 = DateTime(
    2023,
    11,
    23
  );

  late final dateAddDuration = date.add(duration); // date에다가 duration을 더한다
  late final dateSubtractDuration = date.subtract(duration); // date에다가 duration을 빼준다

  final date0 = DateTime(
    1992,
    11,
    23,
  );

  late final utcDate = date0.toUtc(); // date0을 utc 기준의 시간으로 변경
  late final localDate = date0.toLocal(); //현지를 기준으로 시간 변경



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 시간 뒤에 Z가 붙으면 utc 기준 시간
            /*
            Text(date.toString()),
            Text(now.toString()),
            Text(duration.toString()),
             */
            Text(dateAddDuration.toString()),
            Text(dateSubtractDuration.toString()),

            Text(date1.isAfter(date2).toString()), // date1 이 date2 보다 "나중"이면 true 아니면 false 반환
            Text(date1.isBefore(date2).toString()), // date1 이 date2 보다 "이후"이면 true 아니면 false 반환
            Text(date1.isAtSameMomentAs(date2).toString()), // 같은 날짜면 ture 반환

            Text(date0.toString()), // 현지 날짜 기준 (ex.한국)
            Text(utcDate.toString()), // utc 기준 날짜
            Text(utcDate.toLocal().toString()), // utc 날짜를 Local(현지) 기준으로 변경
          ],
        ),
      ),
    );
  }
}

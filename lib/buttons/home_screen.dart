import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 세가지 버튼 모두 style: 하고 버튼 이름.styleForm 해서 디자인 하는 방법은 똑같음 근데 기본 디자인 개성이 다름 = 그러니까 처음 버튼을 만들때 스타팅 포인트 세가지를 제공을 해주는 느낌
            // 근본이 다른게 아니고 기본 스타팅 스타일링만 다른것 모든 파라미터는 똑같이 적용됨
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                // 배경 색깔
                backgroundColor: Colors.red,
                // 비활성화 했을때 버튼 배경 색깔: onPressed가 null이면 적용됨
                disabledBackgroundColor: Colors.grey,
                // 배경 위의 색깔(왜 위의 색깔인가: 클릭했을때 text뿐만 아니라 클릭시 색깔도 흰색이 돼서)
                foregroundColor: Colors.white,
                  // 비활성화 했을때 버튼 배경 위의 색깔: onPressed가 null이면 적용됨
                disabledForegroundColor: Colors.red,
                // 그림자 색깔
                shadowColor: Colors.green,
                // 얼마나 버튼을 뛰우는 효과를 줄지
                elevation: 10.0,
                // 텍스트 스타일 주기
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                //패딩 주기
                padding: EdgeInsets.all(32.0),
                // Border 라인 설정
                side: BorderSide(
                  color: Colors.black,
                  width: 12.0,
                ),
                // 버튼 최소 사이즈 설정
                // minimumSize: Size(200, 150),
                // 버튼 최대 사이즈 설정
                // maximumSize: Size(100, 150),
                // 버튼 고정 사이즈
                // fixedSize: Size(100, 150),
              ),
              child: Text("ElevatedButton"),
            ),
            OutlinedButton(
              onPressed: (){},
              // style: OutlinedButton.styleFrom(
              //   backgroundColor: Colors.blue,
              //   foregroundColor: Colors.red,
              //   shadowColor: Colors.black,
              //   elevation: 10.0,
              // ),
              style: ButtonStyle(
                /// Material State
                ///
                /// hovered - 호버링 상태 (마우스 커서를 올려놓은 상태) = 앱에서는 의미 없음 웹에서 사용
                /// focused - 포커스 됐을때 (텍스트 필드) = 포커스 됐을때 (텍스트 필드)
                /// pressed - 눌렀을때
                /// dragged - 드래그 됐을때
                /// selected - 선택 됐을때 (체크박스, 라디오 버튼)
                /// scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                /// disabled - 비활성화 됐을때
                /// error - 에러 상태일때
                // backgroundColor: Colors.red // ButtonStyle로 지정하면 MaterialStateProperty안에 프로퍼티를 넣어야함
                backgroundColor: MaterialStateProperty.all( // all을 하면 위에 Material State의 모든 상황에 이 값을 적용해야함
                  Colors.red,
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(200, 150),
                )
              ),
              child: Text("OutlinedButton"),
            ),
            TextButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if(states.contains(MaterialState.pressed)) { // 상태가 만약 버튼이 눌린상태면 버튼을 빨간색 배경으로 바꿔라
                      return Colors.red;
                    }

                    return Colors.black;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if(states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }

                    if(states.contains(MaterialState.disabled)) {
                      return Colors.red;
                    }

                    return Colors.white;
                  },
                ),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if(states.contains(MaterialState.pressed)) {
                      return Size(200, 150);
                    }
                    return Size(300, 150);
                  },
                )
              ),
              child: Text("TextButton"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                //shape: StadiumBorder(), // 기본값

                // shape: RoundedRectangleBorder(// 사각형으로 만들어줌
                //   borderRadius: BorderRadius.circular(16.0) // border의 둥글기를 선택 가능
                // ),

                // shape: BeveledRectangleBorder( // border Radius 값을 주면 둥글게 이어주는 느낌이 아니라 표지판 처럼 딱딱 이어줌 기본은 사각형
                //   borderRadius: BorderRadius.circular(16.0)
                // )

                // shape: ContinuousRectangleBorder( // border Radius 값을 주면 뭔가 자연스럽게 이어주는 느낌
                //   borderRadius: BorderRadiusGeometry.circular(32.0)
                // )

                shape: CircleBorder( // 아예 원형 버튼
                  eccentricity: 1, // 0: 기본값 아예 원형, 1: 럭비공 모양, 0~1 사이 값 설정 가능
                )
              ),
              child: Text("Outlined Button Shape"),
            ),
            ElevatedButton.icon( // label 앞에 아이콘을 넣을 수 있음
                onPressed: (){},
                icon: Icon(Icons.keyboard_alt_outlined),
                label: Text("키보드"),
            ),
          ],
        ),
      ),
    );
  }
}

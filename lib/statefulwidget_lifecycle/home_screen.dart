// StatefulWidget LifeCycle 실습 1
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   bool show = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (show) BasicsWidget(),
//             SizedBox(
//               height: 32,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   show = !show;
//                 });
//               },
//               child: Text('클릭해서 보이기/안보이기'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BasicsWidget extends StatefulWidget {
//   BasicsWidget({super.key}) {
//     print('1) Stateful Widget Constructor');
//   }
//
//   @override
//   State<BasicsWidget> createState() {
//
//     print('2) Stateful Widget Create State');
//
//     return _BasicsWidgetState();
//   }
// }
//
// class _BasicsWidgetState extends State<BasicsWidget> {
//   @override
//   void initState() {
//     print('3) Stateful Widget initState');
//     super.initState();
//   }
//
//   @override
//   void didChangeDependencies() {
//     print('4) Stateful Widget didChangeDependencies');
//     super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('5) Stateful Widget build');
//     return Container(
//       color: Colors.red,
//       width: 50,
//       height: 50,
//     );
//   }
//
//   @override
//   void deactivate() {
//     print('6) Stateful Widget deactivate');
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     print('7) Stateful Widget dispose');
//     super.dispose();
//   }
//
// }

// StatefulWidget LifeCycle 실습 2
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   bool show = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (show) BasicsWidget(),
//             SizedBox(
//               height: 32,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   show = !show;
//                 });
//               },
//               child: Text('클릭해서 보이기/안보이기'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BasicsWidget extends StatefulWidget {
//
//   BasicsWidget({super.key}) {
//     print('1) Stateful Widget Constructor');
//   }
//
//   @override
//   State<BasicsWidget> createState() {
//
//     print('2) Stateful Widget Create State');
//
//     return _BasicsWidgetState();
//   }
// }
//
// class _BasicsWidgetState extends State<BasicsWidget> {
//
//   Color color = Colors.red;
//
//   @override
//   void initState() {
//     print('3) Stateful Widget initState');
//     super.initState();
//   }
//
//   @override
//   void didChangeDependencies() {
//     print('4) Stateful Widget didChangeDependencies');
//     super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('5) Stateful Widget build');
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           color = color == Colors.red ? Colors.blue : Colors.red;
//         });
//       },
//       child: Container(
//         color: color,
//         width: 50,
//         height: 50,
//       ),
//     );
//   }
//
//   @override
//   void deactivate() {
//     print('6) Stateful Widget deactivate');
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     print('7) Stateful Widget dispose');
//     super.dispose();
//   }
//
// }

// StatefulWidget LifeCycle 실습 3
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = color == Colors.blue ? Colors.red : Colors.blue;
                  });
                },
                child: BasicsWidget(
                  color: color,
                ),
              ),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클릭해서 보이기/안보이기'),
            ),
          ],
        ),
      ),
    );
  }
}

class BasicsWidget extends StatefulWidget {
  final Color color;

  BasicsWidget({
    required this.color,
    super.key,
  }) {
    print('1) Stateful Widget Constructor');
  }

  @override
  State<BasicsWidget> createState() {
    print('2) Stateful Widget Create State');

    return _BasicsWidgetState();
  }
}

class _BasicsWidgetState extends State<BasicsWidget> {
  @override
  void initState() {
    print('3) Stateful Widget initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) Stateful Widget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5) Stateful Widget build');
    return Container(
      color: widget.color,
      width: 50,
      height: 50,
    );
  }

  @override
  void deactivate() {
    print('6) Stateful Widget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) Stateful Widget dispose');
    super.dispose();
  }
}

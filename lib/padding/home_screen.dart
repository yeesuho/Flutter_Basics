import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 64.9,
                  ),
                  child: Container(
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Container(
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
            ]

          ),
        ],
      ),
    );
  }
}

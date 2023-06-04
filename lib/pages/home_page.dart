import 'package:flutter/material.dart';
import 'package:mathgame/const.dart';
import 'package:mathgame/utils/widgets/custom_button.dart';
import 'package:mathgame/utils/widgets/keyboard_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userAnsewr = '4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        children: [
          //section1
          Container(
            height: 160,
            color: Colors.deepPurple,
          ),
          //section2
          Expanded(
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //question
                    Text(
                      '1 + 1 = ',
                      style: whiteTextStyle,
                    ),
                    //answer

                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple[400],
                      ),
                      child: Center(
                        child: Text(
                          userAnsewr,
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //section3
          const Expanded(
            flex: 2,
            child: KeyboardNumber(),
          ),
        ],
      ),
    );
  }
}

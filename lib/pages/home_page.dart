import 'package:flutter/material.dart';
import 'package:mathgame/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child:  Center(
                child: Text(
                  '1 + 1 = ?',
                  style: whiteTextStyle,
                ),
              ),
            ),
          ),
          //section3
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

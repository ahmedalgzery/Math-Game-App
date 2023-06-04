import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mathgame/const.dart';
import 'package:mathgame/utils/widgets/custom_button.dart';
import 'package:mathgame/utils/widgets/result_message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberA = 1, numberB = 1;
  String userAnsewr = '';
  int score = 0;
  var randomNumber = Random();
  void btTapped(String bt) {
    setState(() {
      if (bt == '=') {
        checkAnsewr();
      } else if (bt == 'C') {
        userAnsewr = '';
      } else if (bt == 'DEL') {
        if (userAnsewr.isNotEmpty) {
          userAnsewr = userAnsewr.substring(0, userAnsewr.length - 1);
        }
      } else if (userAnsewr.length < 3) {
        userAnsewr += bt;
      }
    });
  }

  void checkAnsewr() {
    if (numberA + numberB == int.parse(userAnsewr)) {
      showDialog(
          context: context,
          builder: (context) {
            return ResultMessage(
              onPressed: goToNextQuestion,
              message: 'Correct!!',
              icon: Icons.arrow_forward,
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return ResultMessage(
                onPressed: goToBackQuestion,
                message: 'Sorry try again',
                icon: Icons.rotate_left);
          });
    }
  }

  void goToNextQuestion() {
    Navigator.of(context).pop();
    setState(() {
      userAnsewr = '';
      score++;
    });
    numberA = randomNumber.nextInt(100);
    numberB = randomNumber.nextInt(100);
  }

  void goToBackQuestion() {
    Navigator.of(context).pop();
    setState(() {
      score--;
    });
  }

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
            child: Center(
              child: Text(
                score.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //section2
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //question
                  Text(
                    '$numberA + $numberB = ',
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
          //section3
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.builder(
                  itemCount: numberPad.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) => CustomButton(
                        number: numberPad[index],
                        onTap: () => btTapped(numberPad[index]),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:mathgame/const.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;

  CustomButton({
    Key? key,
    required this.number, required this.onTap,
  }) : super(key: key);
  final String number;
  Color? btColor = Colors.deepPurple[400];

  @override
  Widget build(BuildContext context) {
    if (number == 'C') {
      btColor = Colors.green;
    } else if (number == 'DEL') {
      btColor = Colors.red;
    } else if (number == '=') {
      btColor = Colors.deepPurple;
    }

    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: btColor,
          ),
          child: Center(
            child: Text(
              number,
              style: whiteTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}

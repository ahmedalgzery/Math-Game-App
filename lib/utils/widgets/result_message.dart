import 'package:flutter/material.dart';

import 'package:mathgame/const.dart';

class ResultMessage extends StatelessWidget {
  const ResultMessage(
      {super.key, required this.onPressed, required this.message, required this.icon});
  final VoidCallback onPressed;
  final String message;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple,
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              message,
              style: whiteTextStyle,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepPurple,
              ),
              child: IconButton(
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                onPressed: onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}

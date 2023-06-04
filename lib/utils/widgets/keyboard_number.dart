import 'package:flutter/material.dart';
import 'package:mathgame/const.dart';
import 'package:mathgame/utils/widgets/custom_button.dart';

class KeyboardNumber extends StatelessWidget {
  const KeyboardNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.builder(
          itemCount: numberPad.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) => CustomButton(
                number: numberPad[index],
              )),
    );
  }
}
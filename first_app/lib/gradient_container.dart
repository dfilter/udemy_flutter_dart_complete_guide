import 'package:flutter/material.dart';

import 'dice_roller.dart';

// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // forward key to StatelessWidget parent class
  // verbose:
  // const GradientContainer({ key }): super(key: key);
  // shorthand:
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignement,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

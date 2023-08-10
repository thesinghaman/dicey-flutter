import 'package:flutter/material.dart';

import './dice_roller.dart';

// A widget representing a container with a gradient background
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {Key? key})
      : super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Apply gradient decoration to the container
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Configure the gradient with color1 and color2
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // Add SafeArea to ensure content is visible on devices with notches or system bars
      child: const SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            // Display the title of the dice roller app
            Text(
              "DICE ROLLER",
              style: TextStyle(fontSize: 25),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                // Add the DiceRoller widget to the container
                child: DiceRoller(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

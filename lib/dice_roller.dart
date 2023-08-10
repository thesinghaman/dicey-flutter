import 'dart:math';

import 'package:flutter/material.dart';

// Create an instance of the Random class for generating random numbers
final randomizer = Random();

// A widget representing a dice roller
class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// The state of the DiceRoller widget
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 0;

  // Roll the dice and update the currentDiceRoll state variable
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  // Reset the currentDiceRoll state variable to 0
  void reset() {
    setState(() {
      currentDiceRoll = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Display the dice image corresponding to the currentDiceRoll
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 100),
        // Create a row for the Roll Dice and Reset buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Roll Dice button
            ElevatedButton(
              onPressed: rollDice,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 35, right: 35, top: 10, bottom: 10),
                foregroundColor: const Color.fromRGBO(229, 230, 228, 1),
                backgroundColor: const Color.fromRGBO(40, 40, 43, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text(
                'Roll Dice',
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Reset button
            ElevatedButton(
              onPressed: reset,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 35, right: 35, top: 10, bottom: 10),
                foregroundColor: const Color.fromRGBO(229, 230, 228, 1),
                backgroundColor: const Color.fromRGBO(40, 40, 43, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        )
      ],
    );
  }
}

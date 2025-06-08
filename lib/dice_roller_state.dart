import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); // Create a randomizer instance

// Define a button style for the TextButton Roll Dice
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: const Color.fromARGB(197, 245, 0, 0),
  minimumSize: Size(80, 40),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    side: BorderSide(color: const Color.fromARGB(94, 245, 0, 0), width: 2),
  ),
);

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2; // Variable to store the current dice roll
  // function start for the button
  var welcomeText = "Welcome to the Dice Roller!";

  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // Generate a random number between 1 and 6
      // Update the image based on the current dice roll
      welcomeText = "You rolled a $currentDiceRoll Keep it going!";
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(welcomeText), duration: Duration(seconds: 2)),
      );
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(welcomeText),
        Image.asset('assests/images/dice-$currentDiceRoll.png', width: 150),
        SizedBox(height: 20), // An empty space between the image and the button
        TextButton(
          style: flatButtonStyle,
          onPressed: rollDice,
          child: const Text("Roll the dice"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

// function start for the button

void rollDice() {}

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

// Creates a class to store the container Widgets
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Define a linear gradient with three colors
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/dice-3.png', width: 150),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {},
              child: const Text("Roll the dice"),
            ),
          ],
        ),
      ),
    );
  }
}

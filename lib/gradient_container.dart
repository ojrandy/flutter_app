import 'package:flutter/material.dart';
import 'package:my_app/dice_roller_state.dart';



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
        child: DiceRoller()
      ),
    );
  }
}

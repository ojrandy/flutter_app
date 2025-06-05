import 'package:flutter/material.dart';

import '../style_text.dart';

// Creates a class to store the container Widgets
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Define a linear gradient with three colors
          colors: [
            Colors.blue,
            const Color.fromARGB(193, 11, 7, 219),
            Color.fromARGB(255, 2, 151, 106),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyleText()),
    );
  }
}

import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to the Barbers booking center',
      style: TextStyle(
        fontSize: 22,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
import 'package:flutter/material.dart';

var textStyle = const TextStyle(
  fontSize: 22,
  color: Color.fromARGB(255, 255, 255, 255),
  fontWeight: FontWeight.w600,
);

class StyleText extends StatelessWidget {
  const StyleText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle);
  }
}

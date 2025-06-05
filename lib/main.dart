import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barbers Shop', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blueAccent,
        ),
        body: GradientContainer(),
      ),
    ),
  );
}

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
      child: const Center(
        child: Text(
          'Welcome to the Barbers booking center',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class ExtentTextGradient extends StatelessWidget {
  const ExtentTextGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return ExtentTextGradient();
  }
}

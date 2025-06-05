import 'package:flutter/material.dart';

import '../gradient_container.dart';

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

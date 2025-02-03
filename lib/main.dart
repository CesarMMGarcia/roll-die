import 'package:flutter/material.dart';
import 'package:roll_die/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
          Color.fromARGB(255, 71, 66, 66),
          Color.fromARGB(255, 158, 143, 105)
        ]),
      ),
    ),
  );
}

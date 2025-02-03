import 'dart:math';
import 'package:flutter/material.dart';

class DieRoller extends StatefulWidget {
  const DieRoller({super.key});
  @override
  State<DieRoller> createState() {
    return _DieRollerState();
  }
}

class _DieRollerState extends State<DieRoller> {
  var currentDieValue = 1;

  void rollDie() {
    setState(() {
      currentDieValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/images/dice-$currentDieValue.png",
        width: 350,
      ),
      TextButton(
          onPressed: rollDie,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 32)),
          child: const Text("Roll Die"))
    ]);
  }
}

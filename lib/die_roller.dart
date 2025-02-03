import 'package:flutter/material.dart';

class DieRoller extends StatefulWidget {
  const DieRoller({super.key})
  @override
  State<DieRoller> createState() {
    return _DieRollerState();
  }
}

class _DieRollerState extends State<DieRoller> {
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(currentDieValue),
      TextButton(
          onPressed: rollDie,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 32)),
          child: const Text("Roll Die"))
    ]);
  }
}

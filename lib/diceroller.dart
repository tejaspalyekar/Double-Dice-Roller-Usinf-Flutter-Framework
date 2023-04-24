import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int number = 1;
  int number1 = 1;
  void pressme() {
    setState(() {
      int no = Random().nextInt(6) + 1;
      int no1 = Random().nextInt(6) + 1;
      number = no;
      number1 = no1;
      print(number);
      print(number1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Double Dice Roller",
              style: TextStyle(
                  color: Color.fromARGB(255, 86, 0, 167),
                  backgroundColor: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              const SizedBox(
                width: 80,
              ),
              Image.asset('assets/images/dice-$number.png', width: 100),
              const SizedBox(
                width: 50,
              ),
              Image.asset('assets/images/dice-$number1.png', width: 100),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: pressme,
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 6, 131, 89),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text("Press to Roll"))
        ],
      ),
    );
  }
}

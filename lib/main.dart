import 'package:flutter/material.dart';
import 'package:first_app/gradientcontainer.dart';

void main() {
  const Color color1 = Color.fromARGB(255, 42, 124, 165);
  const Color color2 = Color.fromARGB(255, 0, 184, 71);
  runApp(const MaterialApp(
    home: Scaffold(body: GradientContainer(color1, color2)),
  )); //have to use atleast 2 core widgets to have a ui interface
}

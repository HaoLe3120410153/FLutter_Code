import 'package:flutter/material.dart';
import 'package:android_app/widget_layer2/calculator.dart';

void main() {
  runApp(const Mainscreen_Calculator());
}

class Mainscreen_Calculator extends StatelessWidget {
  const Mainscreen_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CalculatorScreen(),
    );
  }
}
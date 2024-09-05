import 'package:flutter/material.dart';
import 'package:dice_roll_fluter_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;
const colorOne = Color.fromARGB(255, 26, 2, 80);
const colorTwo = Color.fromARGB(255, 45, 7, 98);

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          colorOne,
          colorTwo,
        ], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: StyleText('Hello Flutter Devs')),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:dice_roll_fluter_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;
const colorOne = Color.fromARGB(255, 26, 2, 80);
const colorTwo = Color.fromARGB(255, 45, 7, 98);
var activeDiceImage = 'assests/dice-images/dice-1.png';

void rollDice() {
  activeDiceImage = 'assests/dice-images/dice-4.png';
  print('changing image');
}

class GradientContainer extends StatefulWidget {
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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'),
          )
        ],
      )),
    );
  }
}

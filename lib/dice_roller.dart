// dice_roller.dart
import 'package:dice_rolling/const.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDiceFunction() {
    setState(() {
      var number = randomNumber.nextInt(6) + 1;
      imageAsset = "assets/images/dice_$number.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
          width: 200,
        ),
        TextButton(
            onPressed: () {
              rollDiceFunction();
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}

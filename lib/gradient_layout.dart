// gradient_layout.dart
import 'package:dice_rolling/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  const GradientLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.pink, Colors.blue],
            begin: Alignment.topRight,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

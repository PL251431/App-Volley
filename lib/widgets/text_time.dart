import 'package:flutter/material.dart';

class RotatedTime extends StatelessWidget {
  final String title;

  const RotatedTime({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        color: Colors.white.withOpacity(0.2), // Fundo translúcido
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}

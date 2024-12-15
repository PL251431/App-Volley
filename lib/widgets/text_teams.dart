import 'package:flutter/material.dart';

class TextTeams extends StatelessWidget {
  final String title;

  const TextTeams({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 4,
      child: Container(
        width: 100,
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              "TIMES",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 40,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

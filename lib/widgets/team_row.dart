import 'package:flutter/material.dart';

class TeamRow extends StatelessWidget {
  final String teamName;
  final int playerCount;

  const TeamRow({
    super.key,
    required this.teamName,
    required this.playerCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 20,
              color: Colors.yellow,
            ),
          ),
          Text(
            "$playerCount jogadores",
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

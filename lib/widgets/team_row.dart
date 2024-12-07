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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Nome do time
          Text(
            teamName,
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 24,
              color: Colors.yellow,
            ),
          ),
          // Número e texto "jogadores"
          Row(
            children: [
              Text(
                '$playerCount', // Exibe o número de jogadores
                style: const TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 32,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 5), // Espaço entre o número e o texto
              const Text(
                'jogadores',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 
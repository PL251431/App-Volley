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
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                teamName,
                style: const TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 24,
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(width: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$playerCount',
                    style: const TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 45,
                      color: Color(0xff2B4A8E),
                    ),
                  ),
                  const SizedBox(width: 2),
                  const RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Jogadores',
                      style: TextStyle(
                        fontFamily: 'ConcertOne',
                        fontSize: 8,
                        color: Color(0xff2B4A8E),
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

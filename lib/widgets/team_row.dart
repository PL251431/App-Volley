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
      padding: const EdgeInsets.symmetric(vertical: 4.0), // Espaço menor entre linhas
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Alinhamento à direita
        children: [
          // Nome do time e jogadores
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(width: 10), // Espaço entre o nome do time e o número
              // Número e texto "jogadores"
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Número dos jogadores
                  Text(
                    '$playerCount', // Exibe o número de jogadores
                    style: const TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 45,
                      color:  Color(0xff2B4A8E),
                    ),
                  ),
                  const SizedBox(width: 6), // Espaço entre número e "jogadores"
                  // Nome "jogadores" escrito verticalmente
                  const RotatedBox(
                    quarterTurns: 3, // Rotaciona o texto 90° no sentido horário
                    child: Text(
                      'Jogadores', // Texto completo
                      style: TextStyle(
                        fontFamily: 'ConcertOne',
                        fontSize: 8, // Ajuste de tamanho para combinar com o design
                        color:  Color(0xff2B4A8E),
                        letterSpacing: 1, // Espaçamento entre as letras
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

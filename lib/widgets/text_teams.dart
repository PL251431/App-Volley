import 'package:flutter/material.dart';

class TextTeams extends StatelessWidget {
  final String title;

  const TextTeams({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 4, // Rotaciona a box
      child: Container(
        width: 100, // Largura do container
        height: 240, // Altura do container
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4), // Fundo translúcido
          border: Border.all(
            color: Colors.white, 
            width: 1, // Espessura 
          ),
        ),
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3, // Rotaciona o texto
            child: Text(
              "TIMES",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 40,
                color: Colors.white,
                letterSpacing: 2, // Espaçamento entre letras
              ),
            ),
          ),
        ),
      ),
    );
  }
}

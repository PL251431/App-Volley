import 'package:flutter/material.dart';

class RotatedTime extends StatelessWidget {
  final String title;

  const RotatedTime({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 4,
      child: Container(
        width: 120, // Aumenta a largura do container
        height: 150, // Faz o container ocupar toda a altura
        color: Colors.white.withOpacity(0.2), // Fundo translúcido
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3, // Rotaciona o texto 90 graus
            child: Text(
              "TIMES",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 36, // Aumenta o tamanho da fonte
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

import 'package:flutter/material.dart';

class RotatedTime extends StatelessWidget {
  final String title;

  const RotatedTime({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 4, // Rotaciona a box
      child: Container(
        width: 120, // Largura do container
        height: 240, // Altura do container
        color: Colors.white.withOpacity(0.2), // Fundo translúcido
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3, // Rotaciona o texto
            child: Text(
              "TIMES",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 36, 
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

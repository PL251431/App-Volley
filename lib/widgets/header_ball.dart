import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0), // Margem superior e lateral
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Alinha logo e texto verticalmente
        children: [
          // Logo
          Image.asset(
            'assets/imgs/ball.png', // Caminho do logo
            height: 60, // Ajuste do tamanho do logo
          ),
          const SizedBox(width: 10), // Espaçamento entre logo e texto
          // Título e subtítulo
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinhado à esquerda
            children:  [
              Text(
                "Volley",
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  color: Colors.white,
                  fontSize: 28, // Tamanho da fonte do título principal
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "do fim de semana",
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  color: Colors.white,
                  fontSize: 14, // Tamanho menor para o subtítulo
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/start_button.dart'; // Certifique-se de que o StartButton está importado corretamente

class FooterWidget extends StatelessWidget {
  final VoidCallback onStartPressed;

  const FooterWidget({super.key, required this.onStartPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Garante que o tamanho do widget seja compacto
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
      crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
      children: [
        const Text(
          "Jogo Casado",
          textAlign: TextAlign.center, // Alinha o texto no centro
          style: TextStyle(
            fontFamily: 'ConcertOne',
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        StartButton(
          onPressed: onStartPressed,
        ),
      ],
    );
  }
}

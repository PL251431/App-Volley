import 'package:flutter/material.dart';
import '../widgets/start_button.dart'; // Certifique-se de que o StartButton está importado corretamente

class FooterWidget extends StatelessWidget {
  final VoidCallback onStartPressed;

  const FooterWidget({super.key, required this.onStartPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0), // Afasta o botão da parte inferior da tela
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
        crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
        children: [
          const Text(
            "Jogo Casado",
            textAlign: TextAlign.center, // Alinha o texto no centro
            style: TextStyle(
              fontFamily: 'ConcertOne', // Fonte Concert One aplicada
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15), // Espaçamento entre o texto e o botão
          StartButton(
            onPressed: onStartPressed,
          ),
        ],
      ),
    );
  }
}

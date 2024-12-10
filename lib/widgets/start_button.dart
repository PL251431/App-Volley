import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StartButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center( // Centraliza o botão
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff2B4A8E), // Cor de fundo do botão
          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bordas arredondadas
            side: const BorderSide( // Define a borda
              color: Colors.white, // Cor da borda
              width: 2, // Espessura da borda
            ),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "Iniciar",
          style: TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 18,
            color: Colors.white, // Cor do texto
          ),
        ),
      ),
    );
  }
}

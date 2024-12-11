import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String winner;
  final VoidCallback onNewSet;
  final VoidCallback onFinish;

  const ThirdScreen({
    super.key,
    required this.winner,
    required this.onNewSet,
    required this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white.withOpacity(0.5), // Fundo branco com transparência
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.white, width: 2.0), // Borda branca ao redor do modal
      ),
      title: const Center(
        child: Text(
          'FIM DE SET',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'ConcertOne', // Fonte aplicada
            color: Color(0xff2B4A8E),
          ),
        ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // 80% da largura da tela
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              winner,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'ConcertOne', // Fonte aplicada
                color: Color(0xff2B4A8E),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerRight, // Alinha o texto "VENCEU" à direita
              child: Text(
                'VENCEU',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'ConcertOne', // Fonte aplicada
                  color: Color(0xff2B4A8E),
                ),
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          onPressed: () {
            onFinish(); // Aciona a lógica passada para encerrar
            Navigator.popUntil(context, (route) => route.isFirst); // Volta para a primeira tela
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2B4A8E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
          child: const Text(
            'Terminar',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'ConcertOne', // Fonte aplicada
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // Fecha o diálogo
            onNewSet(); // Reinicia o jogo
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2B4A8E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
          child: const Text(
            'Novo Set',
            style: TextStyle(
              color: Colors.orange,
              fontFamily: 'ConcertOne', // Fonte aplicada
            ),
          ),
        ),
      ],
    );
  }
}

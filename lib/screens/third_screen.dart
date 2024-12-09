import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String winner;
  final VoidCallback onNewSet; // Função chamada ao iniciar novo set
  final VoidCallback onFinish; // Função chamada ao clicar em "Terminar"

  const ThirdScreen({
    super.key,
    required this.winner,
    required this.onNewSet,
    required this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff00ADC3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const Center(
        child: Text(
          'FIM DE SET',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            winner,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'VENCEU',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
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
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // Fecha o diálogo
            onNewSet(); // Reinicia o jogo
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
          child: const Text(
            'Novo Set',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

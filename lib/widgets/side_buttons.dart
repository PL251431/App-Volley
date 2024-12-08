import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  final List<String> labels;
  final bool isLeft;
  final void Function(String action) onButtonPressed; // Callback para botões padrão
  final void Function() onErrorPressed; // Callback para o botão "Erro"

  const SideButtons({
    super.key,
    required this.labels,
    required this.isLeft,
    required this.onButtonPressed,
    required this.onErrorPressed,
  });

  static const buttonBackgroundColor = Color(0xff2B4A8E);
  static const textStyleWhite = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Botões padrão
          ...labels.map((label) => _buildActionButton(label, () => onButtonPressed(label))),
          // Botão "Erro"
          _buildActionButton("Erro", onErrorPressed, isError: true),
        ],
      ),
    );
  }

  // Método auxiliar para criar um botão com texto
  Widget _buildActionButton(String label, VoidCallback onPressed, {bool isError = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (isLeft) _buildButton(onPressed, isError),
          const SizedBox(width: 8),
          Text(label, style: textStyleWhite),
          if (!isLeft) _buildButton(onPressed, isError),
        ],
      ),
    );
  }

  // Método auxiliar para criar um botão redondo
  Widget _buildButton(VoidCallback onPressed, bool isError) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:buttonBackgroundColor,
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}

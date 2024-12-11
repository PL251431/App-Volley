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
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0), // Distância mínima das paredes
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Botões padrão
          ...labels.map(
            (label) => _buildActionButton(label, () => onButtonPressed(label)),
          ),
          // Botão "Erro"
          _buildActionButton("Erro", onErrorPressed, isError: true),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, VoidCallback onPressed, {bool isError = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Mantém a distância vertical entre os botões
      child: Row(
        mainAxisAlignment: isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLeft) _buildButton(onPressed, isError),
          const SizedBox(width: 4), // Reduzida a distância entre botão e texto
          Text(label, style: textStyleWhite),
          if (!isLeft) _buildButton(onPressed, isError),
        ],
      ),
    );
  }

  Widget _buildButton(VoidCallback onPressed, bool isError) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBackgroundColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10.0), // Mantém o tamanho padrão do botão
      ),
      onPressed: onPressed,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 18.0, // Mantém o tamanho do ícone padrão
      ),
    );
  }
}

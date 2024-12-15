import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  final List<String> labels;
  final bool isLeft;
  final void Function(String action) onButtonPressed;
  final void Function() onErrorPressed;

  const SideButtons({
    super.key,
    required this.labels,
    required this.isLeft,
    required this.onButtonPressed,
    required this.onErrorPressed,
  });

  static const buttonBackgroundColor = Color(0xff2B4A8E);
  static const textStyleWhite = TextStyle(color: Colors.white, fontSize: 30 );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...labels.map(
            (label) => _buildActionButton(label, () => onButtonPressed(label)),
          ),
          _buildActionButton("Erro", onErrorPressed, isError: true),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, VoidCallback onPressed, {bool isError = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLeft) _buildButton(onPressed, isError),
          const SizedBox(width: 2),
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
        padding: const EdgeInsets.all(10.0),
      ),
      onPressed: onPressed,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 18.0,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingButton ({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff2B4A8E),
      onPressed: onPressed,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}

import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StartButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff2B4A8E),
          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "Iniciar",
          style: TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

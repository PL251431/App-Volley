import 'package:flutter/material.dart';
import '../widgets/start_button.dart';

class FooterWidget extends StatelessWidget {
  final VoidCallback onStartPressed;

  const FooterWidget({super.key, required this.onStartPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Jogo Casado",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ConcertOne',
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15),
          StartButton(
            onPressed: onStartPressed,
          ),
        ],
      ),
    );
  }
}

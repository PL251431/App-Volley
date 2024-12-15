import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/imgs/ball.png',
          height: 60,
        ),
        const SizedBox(width: 15),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Volley",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "do fim de semana",
              style: TextStyle(
                fontFamily: 'ConcertOne',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

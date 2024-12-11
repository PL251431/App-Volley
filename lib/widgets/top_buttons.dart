import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  static const textStyleBlue = TextStyle(
    color: Color(0xff2B4A8E),
    fontFamily: 'ConcertOne',
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    final players = [
      {'label': 'A', 'text': 'Ziraldos'},
      {'label': 'B', 'text': 'Autoconvidados'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: players.map((player) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.7),
                  shape: const CircleBorder(),
                ),
                onPressed: () {},
                child: Text(
                  player['label']!,
                  style: textStyleBlue,
                ),
              ),
              Text(player['text']!, style: textStyleBlue),
            ],
          ),
        );
      }).toList(),
    );
  }
}

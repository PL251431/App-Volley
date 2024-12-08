import 'package:flutter/material.dart';
import '../widgets/top_buttons.dart';
import '../widgets/side_buttons.dart';
import '../widgets/volleyball_court.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static const buttonBackgroundColor = Color(0xff2B4A8E);
  static const textStyleWhite = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ADC3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xff00ADC3),
      body: Row(
        children: [
          // Botões da esquerda
          const Flexible(
            flex: 2,
            child: SideButtons(
              labels: ['Ace', 'Ataque', 'Bloqueio', 'Erro'],
              isLeft: true,
            ),
          ),
          // Centro da tela com a quadra
          Flexible(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TopButtons(),
                const Spacer(),
                const VolleyballCourt(),
                const Spacer(),
                const Text(
                  "Tempo de jogo: 1:14'00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'ConcertOne',
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Placar Geral',
                    style: textStyleWhite,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          // Botões da direita
          const Flexible(
            flex: 2,
            child: SideButtons(
              labels: ['Ace', 'Ataque', 'Bloqueio', 'Erro'],
              isLeft: false,
            ),
          ),
        ],
      ),
    );
  }
}

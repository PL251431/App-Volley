import 'package:flutter/material.dart';
import '../widgets/team_row.dart';
import '../widgets/floating_button.dart';
import '../widgets/start_button.dart';
import '../widgets/header_ball.dart';
import '../widgets/text_time.dart'; 

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3), // Fundo azul
      body: Row(
        children: [
          // Lateral esquerda com "TIMES" rotacionado
          Container(
            width: 100,
            color: const Color(0xff00ADC3),
            child: const Center(
              child: RotatedTime(title: 'TIMES'), // Usa o widget RotatedTime
            ),
          ),
          // Conteúdo principal
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderWidget(), // Cabeçalho
                // Lista de times
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TeamRow(teamName: 'Sicranos', playerCount: 3),
                      TeamRow(teamName: 'Autoconvidados', playerCount: 3),
                      TeamRow(teamName: 'Ziraldos', playerCount: 4),
                      TeamRow(teamName: 'Sparrings', playerCount: 5),
                    ],
                  ),
                ),
                // Rodapé com título e botão
                Column(
                  children: [
                    const Text(
                      "Jogo Casado",
                      style: TextStyle(
                        fontFamily: 'ConcertOne',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    StartButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/game'); // Vai para a próxima tela
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // Botão flutuante
      floatingActionButton: FloatingButton(
        onPressed: () {
          // Ação ao pressionar "+"
        },
      ),
    );
  }
}
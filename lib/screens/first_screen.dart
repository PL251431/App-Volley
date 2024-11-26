import 'package:flutter/material.dart';
import '../widgets/team_row.dart';
import '../widgets/text_time.dart';
import '../widgets/floating_button.dart';
import '../widgets/start_button.dart';
import '../widgets/header_ball.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3), // Fundo azul
      body: Row(
        children: [
          // Lateral esquerda com "TIMES" rotacionado e fundo translúcido
          Container(
            width: 100,
            color: const Color(0xff00ADC3),
            child: const Center(
              child: RotatedTime(title: 'TIMES'),
            ),
          ),
          // Conteúdo principal
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderWidget(),
                
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
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
                // Botão "Iniciar" no rodapé
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
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
                          Navigator.pushNamed(context, '/game');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Botão de ação flutuante no canto inferior direito
      floatingActionButton: FloatingButton(
        onPressed: () {
          // Lógica ao pressionar "+"
        },
      ),
    );
  }

  // Função auxiliar para criar uma linha de time
  Widget buildTeamRow(String teamName, int playerCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 20,
              color: Colors.yellow,
            ),
          ),
          RichText(
            text: TextSpan(
              text: '$playerCount',
              style: const TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 24,
                color: Colors.blue,
              ),
              children: const [
                TextSpan(
                  text: ' jogadores',
                  style: TextStyle(
                    fontFamily: 'ConcertOne',
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

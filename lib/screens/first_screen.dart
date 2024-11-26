import 'package:flutter/material.dart';

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
            child: Center(
              child: RotatedBox(
                quarterTurns: 3, // Rotaciona o texto 90 graus
                child: Container(
                  color: Colors.white.withOpacity(0.2), // Fundo translúcido
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  child: const Text(
                    "TIMES",
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 24,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Conteúdo principal
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo e título no topo
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/imgs/ball.png', // Caminho do logo
                        height: 80,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Volley do fim de semana",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                // Lista de times no centro
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTeamRow('Sicranos', 3),
                      buildTeamRow('Autoconvidados', 3),
                      buildTeamRow('Ziraldos', 4),
                      buildTeamRow('Sparrings', 5),
                    ],
                  ),
                ),
                // Botão "Iniciar" no rodapé
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2B4A8E),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          // Navega para a próxima tela
                          Navigator.pushNamed(context, '/game');
                        },
                        child: const Text(
                          "Iniciar",
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2B4A8E),
        onPressed: () {
          // Ação ao pressionar "+"
        },
        child: const Icon(Icons.add, color: Colors.white),
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

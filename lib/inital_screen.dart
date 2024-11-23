import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/imgs/ball.png',
                  height: 80,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Volley\ndo fim de semana",
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "TIMES",
                  style: TextStyle(
                    fontFamily: 'ConcertOne',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    buildTeamRow('Sicranos', 3),
                    buildTeamRow('Autoconvidados', 3),
                    buildTeamRow('Ziraldos', 4),
                    buildTeamRow('Sparrings', 5),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Column(
              children: [
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
                    // Navega para a segunda tela
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2B4A8E),
        onPressed: () {
          // Ação ao pressionar "+"
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget buildTeamRow(String teamName, int playerCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            "$playerCount jogadores",
            style: const TextStyle(
              fontFamily: 'ConcertOne',
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/top_buttons.dart';
import '../widgets/side_buttons.dart';
import '../widgets/volleyball_court.dart';
import '../screens/third_screen.dart';
import '../screens/fourth_screen.dart';
import '../screens/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final Map<String, int> leftCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};
  final Map<String, int> rightCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};

  final String leftTeamName = "Ziraldos";
  final String rightTeamName = "Autoconvidados";

  void updateCounter(String action, bool isLeft) {
    setState(() {
      (isLeft ? leftCounters : rightCounters)[action] =
          (isLeft ? leftCounters : rightCounters)[action]! + 1;

      _checkWinner();
    });
  }

  void _checkWinner() {
    int leftTotal = leftCounters.values.fold(0, (sum, value) => sum + value);
    int rightTotal = rightCounters.values.fold(0, (sum, value) => sum + value);

    if (leftTotal >= 25 || rightTotal >= 25) {
      String winner = leftTotal >= 25 ? leftTeamName : rightTeamName;
      _showWinnerDialog(winner);
    }
  }

  void _showWinnerDialog(String winner) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return ThirdScreen(
          winner: winner,
          onNewSet: _resetGame,
          onFinish: _endGame,
        );
      },
    );
  }

  void _resetGame() {
    setState(() {
      leftCounters.updateAll((key, value) => 0);
      rightCounters.updateAll((key, value) => 0);
    });
  }

  void _endGame() {
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ADC3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreen()),
              (route) => false,
            );
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
          Flexible(
            flex: 2,
            child: SideButtons(
              labels: const ['Ace', 'Ataque', 'Bloqueio'],
              isLeft: true,
              onButtonPressed: (action) => updateCounter(action, true),
              onErrorPressed: () => updateCounter("Erro", false),
            ),
          ),
          Flexible(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TopButtons(),
                const Spacer(),
                VolleyballCourt(
                  leftSideScores: leftCounters,
                  rightSideScores: rightCounters,

                ),
                const Spacer(),
                const Text(
                  "Tempo de jogo: 1:14'00",
                  style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'ConcertOne'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2B4A8E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FourthScreen(),
                      ),
                    );
                  },
                  child: const Text('Placar Geral', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: SideButtons(
              labels: const ['Ace', 'Ataque', 'Bloqueio'],
              isLeft: false,
              onButtonPressed: (action) => updateCounter(action, false),
              onErrorPressed: () => updateCounter("Erro", true),
            ),
          ),
        ],
      ),
    );
  }
}

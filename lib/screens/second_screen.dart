import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/top_buttons.dart';
import '../widgets/side_buttons.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final Map<String, int> leftCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};
  final Map<String, int> rightCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};
  
  bool isLeftTurn = true; // Indica de quem é a vez

  void updateCounter(String action, bool isLeft) {
    setState(() {
      if (action == "Erro") {
        isLeftTurn = !isLeftTurn; // Alterna a vez ao cometer erro
      }
      (isLeft ? leftCounters : rightCounters)[action] =
          (isLeft ? leftCounters : rightCounters)[action]! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ModalRoute.of(context)!.addScopedWillPopCallback(() async {
        await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        return true;
      });
    });

    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: const Color(0xff00ADC3),
      body: Row(
        children: [
          _buildSideButtons(isLeft: true, counters: leftCounters),
          _buildCourt(),
          _buildSideButtons(isLeft: false, counters: rightCounters),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff00ADC3),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [IconButton(icon: const Icon(Icons.settings, color: Colors.white), onPressed: () {})],
    );
  }

  Widget _buildSideButtons({required bool isLeft, required Map<String, int> counters}) {
    return Flexible(
      flex: 2,
      child: SideButtons(
        labels: const ['Ace', 'Ataque', 'Bloqueio'],
        isLeft: isLeft,
        onButtonPressed: (action) => updateCounter(action, isLeft),
        onErrorPressed: () => updateCounter("Erro", !isLeft), // Incrementa no lado oposto
      ),
    );
  }

  Widget _buildCourt() {
    return Flexible(
      flex: 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TopButtons(),
          const Spacer(),
          VolleyballCourt(
            leftSideScores: leftCounters,
            rightSideScores: rightCounters,
            isLeftTurn: isLeftTurn, // Passa o estado atual
          ),
          const Spacer(),
          const Text(
            "Tempo de jogo: 1:14'00",
            style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'ConcertOne'),
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
            onPressed: () {},
            child: const Text('Placar Geral', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Widget da quadra de vôlei
class VolleyballCourt extends StatelessWidget {
  final Map<String, int> leftSideScores;
  final Map<String, int> rightSideScores;
  final bool isLeftTurn;

  const VolleyballCourt({
    super.key,
    required this.leftSideScores,
    required this.rightSideScores,
    required this.isLeftTurn,
  });

  @override
  Widget build(BuildContext context) {
    int leftTotal = leftSideScores.values.fold(0, (sum, value) => sum + value);
    int rightTotal = rightSideScores.values.fold(0, (sum, value) => sum + value);

    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xffF77859),
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Stack(
          children: [
            // Linha central
            Positioned(
              left: 148,
              top: 0,
              bottom: 0,
              child: Container(
                width: 4,
                color: Colors.white,
              ),
            ),
            // Placar esquerdo
            Positioned(
              left: 50,
              top: 80,
              child: Text(
                '$leftTotal',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Placar direito
            Positioned(
              left: 200,
              top: 80,
              child: Text(
                '$rightTotal',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Bola de vôlei alternando de lado
            Positioned(
              left: isLeftTurn ? 55 : 200, // Alterna a posição
              top: 30,
              child: Image.asset(
                'assets/imgs/ball.png',
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

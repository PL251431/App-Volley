import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/top_buttons.dart';
import '../widgets/side_buttons.dart';
import '../widgets/volleyball_court.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // Contadores para os lados esquerdo e direito
  final Map<String, int> leftCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};
  final Map<String, int> rightCounters = {"Ace": 0, "Ataque": 0, "Bloqueio": 0, "Erro": 0};

  // Atualiza o contador para o lado correto
  void updateCounter(String action, bool isLeft) {
    setState(() {
      (isLeft ? leftCounters : rightCounters)[action] =
          (isLeft ? leftCounters : rightCounters)[action]! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Configurações de orientação da tela
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
          // Botões da esquerda
          _buildSideButtons(isLeft: true, counters: leftCounters),
          // Quadra no centro
          _buildCourt(),
          // Botões da direita
          _buildSideButtons(isLeft: false, counters: rightCounters),
        ],
      ),
    );
  }

  // Constrói o AppBar
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

  // Constrói os botões laterais
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

  // Constrói a quadra
  Widget _buildCourt() {
    return Flexible(
      flex: 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TopButtons(),
          const Spacer(),
          VolleyballCourt(leftSideScores: leftCounters, rightSideScores: rightCounters),
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Avaliação 1',
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  // Estilos centralizados
  static const buttonBackgroundColor = Color(0xff2B4A8E);
  static const textStyleWhite = TextStyle(color: Colors.white, fontFamily: 'ConcertOne');
  static const textStyleBlue = TextStyle(color: Color(0xff2B4A8E), fontFamily: 'ConcertOne');
  static final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: buttonBackgroundColor,
    shape: const CircleBorder(),
  );

  // Gera os botões laterais (esquerda ou direita)
  Widget buildSideButtons(List<String> texts, {bool isLeft = true}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: texts.map((text) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (isLeft)
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {},
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              const SizedBox(width: 8),
              Text(text, style: textStyleWhite),
              if (!isLeft)
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {},
                  child: const Icon(Icons.add, color: Colors.white),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }

  // Gera os botões do topo (jogadores)
  Widget buildTopButtons() {
    final players = [
      {'label': 'A', 'text': 'ziraldos'},
      {'label': 'B', 'text': 'Autoconvidados'}
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
                  backgroundColor: Colors.white,
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

  // Gera a quadra de vôlei com uma única linha vertical ao meio
  Widget buildVolleyballCourt() {
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
            // Linha vertical central (única divisão da quadra)
            Positioned(
              left: 150 - 2, // Ajustado para o centro da largura
              top: 0,
              bottom: 0,
              child: Container(
                width: 4,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
          buildSideButtons(['Ace', 'Ataque', 'Bloqueio', 'Erro']),
          const Spacer(),
          // Centro da tela com a quadra
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTopButtons(),
              const Spacer(),
              buildVolleyballCourt(),
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
          const Spacer(),
          // Botões da direita
          buildSideButtons(['Ace', 'Ataque', 'Bloqueio', 'Erro'], isLeft: false),
        ],
      ),
    );
  }
}

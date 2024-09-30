import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Força a orientação horizontal
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
      title: 'Desafio 4',
      debugShowCheckedModeBanner: false,
      home: Desafio4(),
    );
  }
}

class Desafio4 extends StatelessWidget {
  const Desafio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3),
      body: Row(
        children: [
          // Botões na lateral esquerda
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B4A8E), // Cor de fundo do botão
                        shape: const CircleBorder(), // Botão circular
                      ),
                      onPressed: () {
                        // Ação do botão
                      },
                      child: const Icon(Icons.add, color: Colors.white), // Ícone de "+"
                    ),
                    const SizedBox(width: 8), // Espaço entre o ícone e o texto
                    const Text(
                      'Exemplo', // Texto de exemplo
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            }),
          ),
          // Espaço flexível para empurrar o conteúdo para o centro
          const Spacer(),
          Column(
            children: [
              const Spacer(), // Espaço flexível para empurrar o botão para baixo
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2B4A8E), // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () {
                    // Ação do botão
                  },
                  child: const Text(
                    'Placar Geral',
                    style: TextStyle(color: Colors.white), // Cor da fonte branca
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espaço adicional abaixo do botão
            ],
          ),
          const Spacer(),
          // Botões na lateral direita
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B4A8E), // Cor de fundo do botão
                        shape: const CircleBorder(), // Botão circular
                      ),
                      onPressed: () {
                        // Ação do botão
                      },
                      child: const Icon(Icons.add, color: Colors.white), // Ícone de "+"
                    ),
                    const SizedBox(width: 8), // Espaço entre o ícone e o texto
                    const Text(
                      'Ace', // Texto de exemplo
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

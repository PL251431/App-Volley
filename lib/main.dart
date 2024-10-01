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
      appBar: AppBar(
        backgroundColor: const Color(0xff00ADC3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Ação do botão de voltar
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Ação do botão de configurações
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xff00ADC3),
      body: Row(
        children: [
          // Botões na lateral esquerda
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff2B4A8E), // Cor de fundo do botão
                        shape: const CircleBorder(), // Botão circular
                      ),
                      onPressed: () {
                        // Ação do botão
                      },
                      child: const Icon(Icons.add,
                          color: Colors.white), // Ícone de "+"
                    ),
                    const Text(
                      'Exemplo', // Texto de exemplo
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'ConcertOne'),
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
              // Botões "A" e "B" movidos para a parte superior
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Cor de fundo do botão
                          shape: const CircleBorder(), // Botão circular
                        ),
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text(
                          'A',
                          style: TextStyle(
                              color: Color(0xff2B4A8E),
                              fontFamily: 'ConcertOne'), // Cor da fonte preta
                        ),
                      ),
                      const Text(
                        'ziraldos',
                        style: TextStyle(
                            color: Color(0xff2B4A8E), fontFamily: 'ConcertOne'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20), // Espaço entre os botões
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Cor de fundo do botão
                          shape: const CircleBorder(), // Botão circular
                        ),
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text(
                          'B',
                          style: TextStyle(
                              color: Color(0xff2B4A8E),
                              fontFamily: 'ConcertOne'), // Cor da fonte preta
                        ),
                      ),
                      const Text(
                        'Autoconvidados',
                        style: TextStyle(
                            color: Color(0xff2B4A8E), fontFamily: 'ConcertOne'),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(), // Espaço flexível para empurrar o botão para baixo
              const SizedBox(
                  height: 10), // Espaço adicional entre o texto e o botão
              const Text(
                "Tempo de jogo: 1:14'00",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'ConcertOne'),
              ),
              const SizedBox(
                  height: 10), // Espaço adicional entre o texto e o botão
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor:
                    const Color(0xff2B4A8E), // Cor de fundo do botão
                  shape: RoundedRectangleBorder(
                    borderRadius:
                      BorderRadius.circular(10.0), // Bordas arredondadas
                    side: const BorderSide(
                    color: Colors.white, // Cor da borda
                    width: 2.0, // Largura da borda
                    ),
                  ),
                  ),
                  onPressed: () {
                    // Ação do botão
                  },
                  child: const Text(
                    'Placar Geral',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ConcertOne'), // Cor da fonte branca
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
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Ace', // Texto de exemplo
                      style: TextStyle(color: Colors.white,fontFamily: 'ConcertOne'),
                    ),
                    const SizedBox(width: 8), // Espaço entre o texto e o ícone
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xff2B4A8E), // Cor de fundo do botão
                        shape: const CircleBorder(), // Botão circular
                      ),
                      onPressed: () {
                        // Ação do botão
                      },
                      child: const Icon(Icons.add,
                          color: Colors.white), // Ícone de "+"
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

import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ADC3),
        toolbarHeight: 40,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xff00ADC3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "PLACAR GERAL",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Azul escuro para o título
              fontFamily: 'ConcertOne',
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xffF77859), // Fundo laranja
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

                  // Coluna A
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Text(
                            "A",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ConcertOne',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text("Ziraldos", style: _textStyle()),
                            const SizedBox(width: 20),
                            Text("25", style: _highlightStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ziraldos", style: _textStyle()),
                            const SizedBox(width: 20),
                            Text("25", style: _highlightStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ziraldos", style: _textStyle()),
                            const SizedBox(width: 20),
                            Text("10", style: _highlightStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Sparrings", style: _textStyle()),
                            const SizedBox(width: 20),
                            Text("25", style: _highlightStyle()),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Coluna B
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Text(
                            "B",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ConcertOne',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text("10", style: _highlightStyleYellow()),
                            const SizedBox(width: 10),
                            Text("Sparrings", style: _textStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("10", style: _highlightStyleYellow()),
                            const SizedBox(width: 10),
                            Text("Sicranos", style: _textStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("25", style: _highlightStyleYellow()),
                            const SizedBox(width: 10),
                            Text("Autoconvidados", style: _textStyle()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("10", style: _highlightStyleYellow()),
                            const SizedBox(width: 10),
                            Text("Autoconvidados", style: _textStyle()),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Tempo lado direito
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("0:24'90", style: _timeStyle()),
                        Text("0:14'23", style: _timeStyle()),
                        Text("0:35'04", style: _timeStyle()),
                        Text("0:11'29", style: _timeStyle()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.white.withOpacity(0.7),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Ziraldos: 3",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontFamily: 'ConcertOne',
                  ),
                ),
                Text(
                  "Sicranos: 1",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontFamily: 'ConcertOne',
                  ),
                ),
                Text(
                  "Autoconvidados: 8",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontFamily: 'ConcertOne',
                  ),
                ),
                Text(
                  "Sparrings: 8",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontFamily: 'ConcertOne',
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

TextStyle _textStyle() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'ConcertOne',
  );
}

TextStyle _highlightStyle() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    fontFamily: 'ConcertOne',
  );
}

TextStyle _highlightStyleYellow() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.yellow,
    fontFamily: 'ConcertOne',
  );
}

TextStyle _timeStyle() {
  return const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontFamily: 'ConcertOne',
  );
}

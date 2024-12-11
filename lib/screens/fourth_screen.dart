import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff00ADC3),
          toolbarHeight: 30,
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
            const Flexible(
              flex: 1,
              child: Text(
                "PLACAR GERAL",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2B4A8E), // Azul escuro para o título
                  fontFamily: 'ConcertOne',
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bar_chart, color: Colors.white),
                        Icon(Icons.bar_chart, color: Colors.white),
                        Icon(Icons.bar_chart, color: Colors.white),
                        Icon(Icons.bar_chart, color: Colors.white)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xffF77859), // Fundo laranja
                        border: Border.all(color: Colors.white, width: 4),
                      ),
                      child: Stack(
                        children: [
                          // Linha central
                          Positioned(
                            left: 205,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              width: 4,
                              color: Colors.white,
                            ),
                          ),

                          // Coluna A
                          Positioned(
                            left: 60,
                            top: 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 18,
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                      color: Color(0xff2B4A8E),
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
                          Positioned(
                            right: 45,
                            top: 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 18,
                                  child: Text(
                                    "B",
                                    style: TextStyle(
                                      color: Color(0xff2B4A8E),
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
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
            Flexible(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white.withOpacity(0.7),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Ziraldos: 3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4A8E),
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                    Text(
                      "Sicranos: 1",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4A8E),
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                    Text(
                      "Autoconvidados: 8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4A8E),
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                    Text(
                      "Sparrings: 8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4A8E),
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
    color: Color(0xff2B4A8E),
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
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontFamily: 'ConcertOne',
  );
}

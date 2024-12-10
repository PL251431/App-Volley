import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ADC3),
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
        children: [
          const SizedBox(height: 10),
          const Text(
            "PLACAR GERAL",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff2957A4), // Azul escuro
              fontFamily: 'ConcertOne',
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _buildScoreTable(),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildScoreTable() {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffF7A58E), // Cor de fundo dos blocos
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: _buildColumn("A", [
                ["Ziraldos", "25"],
                ["Ziraldos", "25"],
                ["Ziraldos", "10"],
                ["Sparrings", "25"],
              ]),
            ),
            const VerticalDivider(color: Colors.white, thickness: 2),
            Expanded(
              child: _buildColumn("B", [
                ["10", "Sparrings"],
                ["10", "Sicranos"],
                ["25", "Autoconvidados"],
                ["10", "Autoconvidados"],
              ], times: ["0:24'90", "0:14'23", "0:35'04", "0:11'29"]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumn(String title, List<List<String>> rows, {List<String>? times}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ...rows.asMap().entries.map((entry) {
          final row = entry.value;
          final time = times != null ? times[entry.key] : null;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    row[0],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    row[1],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (time != null)
                  Expanded(
                    flex: 1,
                    child: Text(
                      time,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.white.withOpacity(0.5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Ziraldos: 3",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2957A4),
            ),
          ),
          Text(
            "Sicranos: 1",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2957A4),
            ),
          ),
          Text(
            "Autoconvidados: 8",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2957A4),
            ),
          ),
          Text(
            "Sparrings: 8",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2957A4),
            ),
          ),
        ],
      ),
    );
  }
}

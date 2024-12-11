import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/team_row.dart';
import '../widgets/floating_button.dart';
import '../widgets/header_ball.dart';
import '../widgets/text_teams.dart';
import '../widgets/footer_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    // Define a orientação para retrato apenas
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3), // Fundo azul
      body: Row(
        children: [
          // Lateral esquerda com "TIMES" rotacionado
          Padding(
            padding: const EdgeInsets.only(left: 4.0), // Adiciona espaço à esquerda
            child: Container(
              color: const Color(0xff00ADC3),
              child: const Center(
                child: TextTeams(title: 'TIMES'), // Usa o widget RotatedTime
              ),
            ),
          ),
          // Conteúdo principal
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderWidget(), // Cabeçalho
                // Lista de times
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TeamRow(teamName: 'Sicranos', playerCount: 3),
                      TeamRow(teamName: 'Autoconvidados', playerCount: 3),
                      TeamRow(teamName: 'Ziraldos', playerCount: 4),
                      TeamRow(teamName: 'Sparrings', playerCount: 5),
                    ],
                  ),
                ),
                // Substituímos o rodapé original pelo FooterWidget
                FooterWidget(
                  onStartPressed: () {
                    Navigator.pushNamed(context, '/game'); // Vai para a próxima tela
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // Botão flutuante
      floatingActionButton: FloatingButton(
        onPressed: () {
          // Ação ao pressionar "+"
        },
      ),
    );
  }
}

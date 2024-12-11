import 'package:flutter/material.dart';
import '../widgets/team_row.dart';
import '../widgets/floating_button.dart';
import '../widgets/header_ball.dart';
import '../widgets/text_teams.dart';
import '../widgets/footer_widget.dart'; 

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3), // Fundo azul
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        const HeaderWidget(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 4.0), // Adiciona espaço à esquerda
              child: Container(
                color: const Color(0xff00ADC3),
                child: const Center(
                  child: TextTeams(title: 'TIMES'), // Usa o widget RotatedTime
                ),
              ),
            ),
            // Conteúdo principal
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Cabeçalho
                  // Lista de times
                  Padding(
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
                ],
              ),
            ),
          ],
        ),
        FooterWidget(
          onStartPressed: () {
            Navigator.pushNamed(context, '/game'); // Vai para a próxima tela
          },
        ),
      ]),
      floatingActionButton: FloatingButton(
        onPressed: () {
        },
      ),
    );
  }
}

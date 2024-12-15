
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
    // Define a orientação para retrato 
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

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
                    left: 4.0), 
                child: Container(
                  color: const Color(0xff00ADC3),
                  child: const Center(
                    child:
                        TextTeams(title: 'TIMES'), 
                  ),
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
        ],
      ),
      // Botão de add
      floatingActionButton: FloatingButton(
        onPressed: () {
          
        },
      ),
    );
  }
}

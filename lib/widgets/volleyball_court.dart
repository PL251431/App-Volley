import 'package:flutter/material.dart';

class VolleyballCourt extends StatelessWidget {
  final Map<String, int> leftSideScores; 
  final Map<String, int> rightSideScores; 
  final bool isLeftTurn;

  const VolleyballCourt({
    super.key,
    required this.leftSideScores,
    required this.rightSideScores,
    required this.isLeftTurn,
  });

  @override
  Widget build(BuildContext context) {
    // Soma total para exibição na quadra
    int leftTotal = leftSideScores.values.fold(0, (sum, value) => sum + value);
    int rightTotal =
        rightSideScores.values.fold(0, (sum, value) => sum + value);

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
            // Linha central
            Positioned(
              left: 148, // Ajuste para centralizar
              top: 0,
              bottom: 0,
              child: Container(
                width: 4,
                color: Colors.white,
              ),
            ),
            // Placar no lado esquerdo
            Positioned(
              left: 50,
              top: 80,
              child: Text(
                '$leftTotal', // Soma total do lado esquerdo
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: isLeftTurn ? 55 : 200, // Ajuste conforme necessário
              top: 30,
              child: Image.asset(
                'assets/imgs/ball.png',
                width: 40,
                height: 40,
              ),
            ),

            // Placar no lado direito
            Positioned(
              left: 200,
              top: 80,
              child: Text(
                '$rightTotal', // Soma total do lado direito
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

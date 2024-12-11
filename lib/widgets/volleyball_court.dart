import 'package:flutter/material.dart';

class VolleyballCourt extends StatelessWidget {
  final Map<String, int> leftSideScores;
  final Map<String, int> rightSideScores;

  const VolleyballCourt({
    super.key,
    required this.leftSideScores,
    required this.rightSideScores,
  });

  @override
  Widget build(BuildContext context) {
    // Soma total para exibição na quadra
    int leftTotal = leftSideScores.values.fold(0, (sum, value) => sum + value);
    int rightTotal = rightSideScores.values.fold(0, (sum, value) => sum + value);

    return Center(
      child: Container(
        width: 300, // Largura total da quadra
        height: 190, // Altura total da quadra
        decoration: BoxDecoration(
          color: const Color(0xffF77859), // Cor de fundo da quadra
          border: Border.all(color: Colors.white, width: 4), // Borda branca ao redor
        ),
        child: Stack(
          children: [
            // Linha central perfeitamente alinhada
            Positioned(
              left: (145), // Centraliza a linha baseada na largura do contêiner
              top: 0,
              bottom: 0,
              child: Container(
                width: 4, // Largura da linha
                color: Colors.white, // Cor da linha
              ),
            ),
            // Placar no lado esquerdo
            Positioned(
              left: 50,
              top: 100, // Ajustado para mover o número mais para baixo
              child: Text(
                '$leftTotal', // Soma total do lado esquerdo
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Indicador de bola (sempre no lado direito)
            Positioned(
              left: 165, // Posicionado no lado direito
              top: 30, // Centralizado verticalmente no quadrante direito
              child: Image.asset(
                'assets/imgs/ball.png',
                width: 40,
                height: 40,
              ),
            ),
            // Placar no lado direito
            Positioned(
              left: 175,
              top: 100, // Ajustado para mover o número mais para baixo
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

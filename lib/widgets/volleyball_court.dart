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
    int leftTotal = leftSideScores.values.fold(0, (sum, value) => sum + value);
    int rightTotal = rightSideScores.values.fold(0, (sum, value) => sum + value);

    return Center(
      child: Container(
        width: 300,
        height: 160,
        decoration: BoxDecoration(
          color: const Color(0xffF77859),
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 145,
              top: 0,
              bottom: 0,
              child: Container(
                width: 4,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 50,
              top: 100,
              child: Text(
                '$leftTotal',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 165,
              top: 30,
              child: Image.asset(
                'assets/imgs/ball.png',
                width: 40,
                height: 40,
              ),
            ),
            Positioned(
              left: 175,
              top: 100,
              child: Text(
                '$rightTotal',
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

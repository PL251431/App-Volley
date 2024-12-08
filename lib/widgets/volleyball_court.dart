import 'package:flutter/material.dart';

class VolleyballCourt extends StatelessWidget {
  const VolleyballCourt({super.key});

  @override
  Widget build(BuildContext context) {
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
            // Números nos quadrantes
            const Positioned(
              left: 50,
              top: 80,
              child: Text(
                '12',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              left: 200,
              top: 80,
              child: Text(
                '22',
                style: TextStyle(
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

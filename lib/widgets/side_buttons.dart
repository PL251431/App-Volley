import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  final List<String> labels;
  final bool isLeft;

  const SideButtons({super.key, required this.labels, required this.isLeft});

  static const buttonBackgroundColor = Color(0xff2B4A8E);
  static const textStyleWhite = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: labels.map((text) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment:
                  isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
              children: [
                if (isLeft)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                const SizedBox(width: 8),
                Text(text, style: textStyleWhite),
                if (!isLeft)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

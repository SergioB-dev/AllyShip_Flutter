import 'package:flutter/material.dart';

class ASScoreWidget extends StatelessWidget {
  final int score;
  double fontSize;

  ASScoreWidget(this.score, {this.fontSize = 12.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "$score%",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          "Ally Score",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        )
      ],
    );
  }
}

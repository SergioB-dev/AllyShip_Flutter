import 'package:flutter/material.dart';

class ASScoreWidget extends StatelessWidget {
  const ASScoreWidget({
    Key? key,
  }) : super(key: key);

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
              "90%",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          "Ally Score",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

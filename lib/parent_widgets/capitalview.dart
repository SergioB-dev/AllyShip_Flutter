import 'package:flutter/material.dart';

class CapitalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Stack(alignment: Alignment.center, children: [
        Opacity(opacity: 0.5, child: Image.asset("images/capital.jpg")),
        Image.asset(
          "images/allyBanner.png",
          width: double.infinity,
        )
      ]),
    );
  }
}

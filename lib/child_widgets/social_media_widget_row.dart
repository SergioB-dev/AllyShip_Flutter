import 'package:flutter/material.dart';

class SocialMediaWidgetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
        "SHARE THEIR ALLY SCORE", 
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaIconWidget(imagePath: "images/twitter.jpg"),
              SocialMediaIconWidget(imagePath: "images/facebook.png"),
              SocialMediaIconWidget(imagePath: "images/instagram.png")
            ],
          ),
        ),
      ],
    );
  }
}

class SocialMediaIconWidget extends StatelessWidget {
  final String imagePath;
  double height = 50;
  SocialMediaIconWidget({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, height: height, fit: BoxFit.cover);
  }
}


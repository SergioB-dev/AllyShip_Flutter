import 'package:flutter/material.dart';

class EmailButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        style: ButtonStyle(
        elevation: MaterialStateProperty.all(5), 
        backgroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {},
        child: Text("EMAIL THIS OFFICAL"),
      ),
    );
  }
}

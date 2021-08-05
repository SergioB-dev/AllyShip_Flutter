import 'package:flutter/material.dart';
import 'package:letsgo/child_widgets/asscorewidget.dart';
import 'package:letsgo/parent_widgets/profile_screen.dart';

class SenatorCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pushProfileScreen(context),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 20,
              spreadRadius: -25,
              offset: Offset(5.0, 5.0))
        ]),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            shadowColor: Colors.black,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/kamala.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      )),
                  Column(
                    children: [
                      Text("Kamala Harris",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Senator - (D)")
                    ],
                  ),
                  ASScoreWidget(90, fontSize: 12,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void pushProfileScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SenatorProfileScreen()));
  }
}

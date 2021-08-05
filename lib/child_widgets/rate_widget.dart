import 'package:flutter/material.dart';

class RateOfficialPromptWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Align(alignment: Alignment.centerLeft,
                                child: Text(
                    "RATE THIS OFFICIAL",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ), 
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("Is Karen Bass actively supporting Black and traditionally marginalized communities? Give us your rating. You may update anytime.",
              style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

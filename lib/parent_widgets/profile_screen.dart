import 'package:flutter/material.dart';
import 'package:letsgo/child_widgets/asscorewidget.dart';
import 'package:letsgo/child_widgets/email_button_widget.dart';
import 'package:letsgo/child_widgets/rate_widget.dart';
import 'package:letsgo/child_widgets/social_media_widget_row.dart';

class SenatorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //automaticallyImplyLeading: true,
            // leading: IconButton(
            //   icon: Icon(Icons.arrow_back_ios),
            //   onPressed: () => Navigator.pop(context, false),
            // ),
            ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/kamala.jpg",
                      width: MediaQuery.of(context).size.width * 0.45,
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.47,
                  child: Align(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Icon(Icons.bookmark_outline,
                                size: 40, color: Colors.black),
                            onPressed: () {},
                          ),
                        ),
                        Text("KAMALA HARRIS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Senator  (D)",
                                style: TextStyle(fontSize: 18))),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              ASScoreWidget(
                                90,
                                fontSize: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: InfoButtonWidget(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(dummyText, style: TextStyle(fontSize: 16)),
            ),
            SocialMediaWidgetRow(),
            EmailButtonWidget(),
            RateOfficialPromptWidget()
          ]),
        ));
  }
}

class InfoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Icon(Icons.info_outline_rounded, size: 50),
    );
  }
}

const dummyText = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et erat urna. 
Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
Mauris lacinia vestibulum est, at pharetra dui dapibus eu. Etiam rhoncus lobortis augue. 
Nullam in suscipit sem. Integer eget enim malesuada, mattis arcu ac, ultricies est. Pellentesque habitant morbi 
tristique senectus et netus et malesuada fames ac turpis egestas. Ut luctus convallis est, 
in iaculis arcu ullamcorper nec. Phasellus volutpat tortor in diam placerat, non tempus quam maximus. Fusce 
viverra nec velit quis tristique. Aenean bibendum purus felis, eu lacinia eros tincidunt ac. 
Mauris accumsan sollicitudin tellus, a lobortis nibh aliquam vel. Ut sollicitudin vel lacus vitae dapibus.

Quisque placerat enim a tellus rhoncus eleifend. Donec porta non lacus nec eleifend. 
Aenean eu libero molestie, fringilla leo sed, congue libero. Ut eu porttitor odio,
 consectetur hendrerit leo. Sed purus justo, aliquam in rhoncus quis, sollicitudin 
 sit amet quam. Nam auctor lacinia ligula, vel fringilla diam viverra sit amet. Donec 
 a vestibulum sem. Quisque lacinia nisl eu lectus tempor, 
vitae volutpat ligula laoreet. Curabitur eget sem sit amet turpis porta scelerisque non eu est. 
Quisque tempus metus eu nisl consequat egestas sed sed ante. Mauris maximus maximus ante id interdum. Cras porta finibus risus, 
quis consequat massa mollis eget. Curabitur eget turpis lectus. Sed luctus, nunc eu consequat lobortis, 
ex lorem tempus mi, sit amet semper justo nulla in metus. Aenean laoreet ac metus at feugiat.




""";

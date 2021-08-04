import 'package:flutter/material.dart';
import 'package:letsgo/parent_widgets/capitalview.dart';
import 'package:letsgo/parent_widgets/senator_card_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Search App"),
            backgroundColor: Colors.grey,
            actions: [ASSearchButton()],
          ),
          body: Column(
            children: [CapitalView(), SenatorCardWidget()],
          )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final senators = [
    "Kamala Harris",
    "Karen Bass",
    "Diane Feinstein",
    "Mazie Hirono",
    "Ami Bera",
    "Michael Bennet"
  ];

  final List<String> recentSearch = [
    "Kamala Harris",
    "Karen Bass",
    "Diane Feinstein",
    "Mazie Hirono",
    "Ami Bera",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearch
        : senators.where((senator) => senator.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class ASSearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        showSearch(context: context, delegate: DataSearch());
      },
    );
  }
}

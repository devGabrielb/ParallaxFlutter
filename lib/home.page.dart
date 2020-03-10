import 'package:flutter/material.dart';
import 'package:paralax_pageview/cards-list.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Container(
            child: CardList(),
          ),
        ],
      ),
    ));
  }
}

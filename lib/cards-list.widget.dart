import 'package:flutter/material.dart';

import 'card-item.widget.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener((){

      setState(() =>pageOffset = pageController.page);
      
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
    height: MediaQuery.of(context).size.height * 0.55,
    child: PageView(
      controller: pageController,
      children: <Widget>[
        CardItem(
          assetName: "https://github.com/MarcinusX/buy_ticket_design/blob/master/assets/steve-johnson.jpeg?raw=true",
          name: "Iron Man",
          date: "4.20-30",
          offset: pageOffset,
        ),

        CardItem(
          assetName: "https://github.com/MarcinusX/buy_ticket_design/blob/master/assets/rodion-kutsaev.jpeg?raw=true",
          name: "Iron Man",
          date: "4.20-30",
          offset: pageOffset - 1,
        ),
        CardItem(
          assetName: "https://github.com/MarcinusX/buy_ticket_design/blob/master/assets/rodion-kutsaev.jpeg?raw=true",
          name: "Iron Man",
          date: "4.20-30",
          offset: pageOffset - 2,
        ),
      ],
    ),  
    );
  }
}
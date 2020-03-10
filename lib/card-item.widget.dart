import 'package:flutter/material.dart';
import 'package:paralax_pageview/card-content.widget.dart';
import 'dart:math' as math;

class CardItem extends StatelessWidget {
  final String name; //<-- title of the event
  final String date; //<-- date of the event
  final String assetName;
   final double offset;
 //<-- name of the image to be displayed

  const CardItem({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Container(
        child: Card(
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                child: Image.network(
                 
                  assetName,
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment(-offset.abs(), 0),
                  fit: BoxFit.none,


                ),
              ),
              SizedBox(height: 8,),

              Expanded(
                child: CardContent(
                  name: name,
                  date: date,
                  offset: gauss,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
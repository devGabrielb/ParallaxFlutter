import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final double offset;

  const CardContent({Key key, @required this.name, @required this.date, @required this.offset})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(name, style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(date, style: TextStyle(color: Colors.grey)),
            Spacer(),
            Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Reserve"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  onPressed: (){},
                ),
                Spacer(),
                Text(
                  "0.00  \$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

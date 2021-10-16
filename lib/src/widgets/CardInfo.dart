import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  CardInfo({@required this.text, @required this.icon});

  final text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal.shade900,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'SourceSans',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

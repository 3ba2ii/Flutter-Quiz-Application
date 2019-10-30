import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 10.0, bottom: 50.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

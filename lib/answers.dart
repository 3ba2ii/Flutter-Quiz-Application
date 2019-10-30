import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function keyHandler;
  final String answers;
  Answers(this.keyHandler,this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answers),
        onPressed: keyHandler,
      ),
    );
  }
}

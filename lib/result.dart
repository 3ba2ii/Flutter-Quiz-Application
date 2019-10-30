import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result(this.totalScore, this.reset);

  String get yourPersonality {
    String result = "You Did It !";
    if (totalScore > 20) {
      result = "You 're a Bitch !";
    } else if (10 <= totalScore && totalScore <= 20) {
      result = 'Moderate Personality';
    } else {
      result = "Fuck Off you killin' it ";
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            yourPersonality,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent,
              ),
            ),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}

import 'package:first_project/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What kind of music do you love the most?',
      'answers': [
        {'text': 'Jazz', 'score': 10},
        {'text': 'Rock', 'score': 15},
        {'text': 'Metal', 'score': 20},
        {'text': 'Tecno', 'score': 5},
        {'text':'Country Music','score':2}
      ],
    },
      {
      'questionText': 'What do you Truly Desire?',
      'answers': [
        {'text': 'Money', 'score': 10},
        {'text': 'Love', 'score': 2},
        {'text': 'Killing', 'score': 20},
        {'text': 'Peace', 'score': 0},
        {'text':'Steal Something ','score':15}
      ],
    },
      {
      'questionText': 'Do you kill a man who raped your wife?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Totally Yes', 'score': 5},
        {'text': 'No', 'score': 20},  
      ],
    },
      {
      'questionText': 'What is your favorite TV show?',
      'answers': [
        {'text': 'Friends', 'score': 5},
        {'text': 'GOT', 'score': 5},
        {'text': 'Breaking Bad', 'score': 10},
        {'text': 'Peaky Blinders', 'score': 20},
        {'text':'Other','score':15}
      ],
    },
  ];
  int _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print('$_totalScore');
    if (_questionIndex < questions.length) {
      print('we have more questions');
    } else {
      print('No More Questions');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Personality Quiz',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

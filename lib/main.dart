import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Was ist deine Farbe?',
      'answers': [
        {'text': 'Schwarz', 'score': 10},
        {'text': 'Rot', 'score': 5},
        {'text': 'Grün', 'score': 3},
        {'text': 'Grün', 'score': 1}
      ]
    },
    {
      'questionText': 'Was ist dein Tier?',
      'answers': [
        {'text': 'Hund', 'score': 12},
        {'text': 'Eier', 'score': 3},
        {'text': 'Huhn', 'score': 6},
        {'text': 'Katze', 'score': 12}
      ]
    },
    {
      'questionText': 'Was ist dein Favorit Favorit',
      'answers': [
        {'text': 'String', 'score': 4},
        {'text': 'String', 'score': 1},
        {'text': 'Krieg', 'score': 30},
        {'text': 'Kacke', 'score': 3}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hier Quiz App Title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

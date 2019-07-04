import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Was ist deine Farbe?', 'Was ist dein Tier?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hier Quiz App Title'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Antwort 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Antwort 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Antwort 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}

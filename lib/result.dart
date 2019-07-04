import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Joa ist okay';
    } else if (resultScore <= 12) {
      resultText = 'Schon besser junge!!!';
    } else if (resultScore <= 16) {
      resultText = 'Geile Sache man';
    } else {
      resultText = 'Du bist leider scheiße';
    }
    print(resultScore);
    print(resultText);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

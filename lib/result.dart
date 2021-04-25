import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resulText = 'You did it!';
    if (resultScore <= 8) {
      resulText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resulText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resulText = 'You are strange!';
    } else {
      resulText = 'You are so bad!';
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              child: Text('Restart Quiz'),
              textColor: Colors.blue,
              onPressed: resetHandler)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;
  const Result({this.resultScore, this.restartHandler});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'You are Good';
    } else if (resultScore >= 15) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You did it';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            FlatButton(
              onPressed: restartHandler,
              child: Text("Restart Quiz !"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

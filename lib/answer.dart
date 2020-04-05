import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String answerText;
  const Answer(this.stateHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    
        return Container(
          color: Colors.blue,
          width: double.infinity,
          child: RaisedButton(
                  child: Text(answerText),
                  textColor: Colors.red,
                  onPressed: stateHandler,
            ),
    );
  }
}
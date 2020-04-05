import 'package:flutter/material.dart';
import 'package:myapp/quiz.dart';
import 'package:myapp/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 9},
        {'text': 'Black', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answerText': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Elephant', 'score': 9},
        {'text': 'Dog', 'score': 3}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                restartHandler: _restartQuiz
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_1/quiz.dart';
import 'package:flutter_1/result.dart';

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
  final questions = const [
    {
      "questionText": "whats your favorite color?",
      "answer": [
        {"text": "black", 'score': 10},
        {'text': "red", 'score': 5},
        {'text': "green", 'score': 3},
        {'text': "white", 'score': 1}
      ]
    },
    {
      'questionText': 'whats your favorite animal?',
      'answer': [
        {"text": "rabbit", 'score': 1},
        {'text': "snake", 'score': 5},
        {'text': "elephant", 'score': 3},
        {'text': "lion", 'score': 2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) => {
        if (_questionIndex < questions.length)
          {
            setState(() {
              _questionIndex = _questionIndex + 1;
              _totalScore = _totalScore + score;
            })
          }
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Quiz(questions, _answerQuestion, _questionIndex)
                ],
              )
            : Result(_totalScore),
      ),
    );
  }
}

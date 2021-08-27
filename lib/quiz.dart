import 'package:flutter/material.dart';
import 'package:flutter_1/answer.dart';
import 'package:flutter_1/question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final Function selectHandler;

  const Quiz(this.questions, this.selectHandler, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText'].toString()),
          ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)!
              .map((answer) {
            return Answer(() => selectHandler(answer['score']), answer['text'].toString());
          }).toList()
        ],
      ),
    );
  }
}

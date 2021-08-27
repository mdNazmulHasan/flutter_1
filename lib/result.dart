import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'you did it!';
    if (resultScore <= 8) {
      resultText = 'good boy';
    }else if(resultScore<=12){
      resultText = 'meh!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

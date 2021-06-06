import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;
  Result(this.resetQuiz, this.totalScore);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column( children: [
        Text('You have successfully completed the quiz!', textAlign: TextAlign.center,),
        Text('Your score is $totalScore', textAlign: TextAlign.center),
        ElevatedButton(onPressed: resetQuiz, child: Icon(Icons.replay)),
      ],),
    );
  }
}

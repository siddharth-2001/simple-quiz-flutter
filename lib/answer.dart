import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map answer;
  final Function answerHandler;
  Answer(this.answer, this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.pink,
        ),
        child: Text(answer.keys.first),
        onPressed: () {
          answerHandler(answer.keys.first, answer.values.first);
        },
      ),
    );
  }
}

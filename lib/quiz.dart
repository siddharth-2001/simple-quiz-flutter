import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map> answers;
  final Function answerHandler;
  Quiz(this.question, this.answers, this.answerHandler);
  @override
  Widget build(BuildContext context) {
      return Column(
      children: [
        Question(question),
        for (var answerChoice in answers) Answer(answerChoice, answerHandler)
      ],
    );
  }
}

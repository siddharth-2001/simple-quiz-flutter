import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var questions = [
    {
      'questionText': 'What phone do you use?',
      'answerText': [
        {'OnePlus': 10},
        {'iPhone': 8},
        {'Samsung': 8},
        {'Others': 6}
      ]
    },
    {
      'questionText': 'What is your favourite colour?',
      'answerText': [
        {'Orange': 4},
        {'Green': 10},
        {'Blue': 10},
        {'Red': 7}
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answerText': [
        {'Dog': 10},
        {'Dog': 10},
        {'Dog': 10},
        {'Dog': 10}
      ]
    },
  ];

  int questionIndex = 0;
  int totalScore = 0;

  void answerHandler(String answered, int score) {
    setState(() {
      questionIndex += 1;
    });
    totalScore += score;
    print(answered);
    print(totalScore);
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App'), centerTitle: true),
        body: questionIndex == questions.length
            ? Result(resetQuiz, totalScore)
            : Quiz(questions[questionIndex]['questionText'],
                questions[questionIndex]['answerText'], answerHandler),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  var _q_number = 0;
  // ignore: non_constant_identifier_names
  var _total_s = 0;


  // ignore: unused_element
  void _resetQuiz() {
    setState(() {
      _q_number = 0;
      _total_s = 0;
    });
  }
  // ignore: non_constant_identifier_names
  void _increase_q_Number(int score) {
    _total_s += score;
    setState(() {
      _q_number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': '105 * 5 = ?',
        'answers': [
          {'text': '525', 'score': 10},
          {'text': '315', 'score': 0},
          {'text': '225', 'score': 0},
          {'text': '645', 'score': 0},
        ],
      },
      {
        'questionText': '550 / 5 = ?',
        'answers': [
          {'text': '11', 'score': 0},
          {'text': '110', 'score': 10},
          {'text': '120', 'score': 0},
          {'text': '12', 'score': 0},
        ],
      },
      {
        'questionText': '5 choose 5 = ?',
        'answers': [
          {'text': '5', 'score': 0},
          {'text': '1', 'score': 10},
          {'text': '0', 'score': 0},
          {'text': '10', 'score': 0}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _q_number <= 2
            ? Quiz(
                questions: _questions,
                answerQuestion: _increase_q_Number,
                questionIndex: _q_number)
            : Results(_total_s,_resetQuiz),
      ),
    );
  }
}

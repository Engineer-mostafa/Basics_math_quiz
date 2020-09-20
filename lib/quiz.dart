import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';



class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  }); 
  @override
  Widget build(BuildContext context) {
    return Column(children: [
                SizedBox(height: 20,),
                Question(
                  questions[questionIndex]['questionText'],
                ),
                SizedBox(height: 10,),

                ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                    .map((answer) {
                  return Answer(()=>answerQuestion(answer['score']), answer['text']);
                })
              ]);
  }
}
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  final Function reset;

  String get resultPhrase {
    String resultText;
    if (score > 20) {
      resultText = 'You are awesome and innocent! your result is $score';
    } else if (score > 10) {
      resultText = 'Pretty likeable! your result is $score';
    } else if (score > 0) {
      resultText = 'You are ... strange?! your result is $score';
    } else {
      resultText = 'You are so bad! your result is $score';
    }
    return resultText;
  }


  Results(this.score,this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        
        children: <Widget>[
          SizedBox(height: 20,),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}

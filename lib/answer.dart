import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final Function selcHandler;
 final String l;

 Answer(this.selcHandler,this.l);
 @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  
      RaisedButton(onPressed: selcHandler,
       child: Text(l),
       color: Colors.blue,
       textColor: Colors.white,
       ),
    );
  }
}
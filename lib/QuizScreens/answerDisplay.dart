import 'package:flutter/material.dart';
class AnswerDisplay extends StatelessWidget {
  //const AnswerDisplay({ Key? key }) : super(key: key);
  final bool iscorrect ;
  final String answer;
  AnswerDisplay({this.iscorrect,this.answer});

  Color c;
  @override
  Widget build(BuildContext context) {
    if(iscorrect){
      c = Colors.lightGreenAccent;
    }
    else{
      c = Colors.amber;
    }

    return Container(
      width: double.infinity,
      color: c,
      child: Text(answer),
    );
  }
}
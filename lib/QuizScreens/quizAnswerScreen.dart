import 'package:flutter/material.dart';
import 'package:kword1/JourneyFilesAndMapScreen/mapScreen.dart';
import 'answerDisplay.dart';
class QuizAnswerScreen extends StatelessWidget {
  //const QuizAnswerScreen({ Key? key }) : super(key: key);
  final List<Questions> questions;
  final List<int> qlist;
  final Function selectHandler;
  QuizAnswerScreen({this.questions,this.qlist,this.selectHandler});
  

  @override
  Widget build(BuildContext context) {
    return Card( child:  Column(
      children: [
        Text(questions[qlist[0]].answerExplain),
        ...questions[qlist[0]].options.map( (answer){
            return AnswerDisplay( iscorrect : (answer== questions[qlist[0]].answerText), answer: answer,);} ),
      ElevatedButton(onPressed: selectHandler, child: Text("Next"))
      ],
    ),);
  }
}
import 'package:flutter/material.dart';
import 'package:kword1/JourneyFilesAndMapScreen/mapScreen.dart';
import 'package:kword1/QuizScreens/answerOption.dart';

class QuizQuestionScreen extends StatelessWidget {
  //const QuizQuestionScreen({ Key? key }) : super(key: key);
  final List<Questions> questions;
  final List<int> qlist;
  final Function selectHandler;
  QuizQuestionScreen({this.questions,this.qlist,this.selectHandler});


  @override
  Widget build(BuildContext context) {
    return Card(child: Column( //crossAxisAlignment: CrossAxisAlignment.center , 
              children: [
                Text( questions[qlist[0]].questionText),
                ...questions[qlist[0]].options.map( (answer){
                  return AnswerOption(()=>selectHandler(answer== questions[qlist[0]].answerText), answer ,); 
                } )
              ] ,));
  }
}
import 'package:flutter/material.dart';

class QuizRewardScreen extends StatelessWidget {
  //const QuizRewardScreen({ Key? key }) : super(key: key);
  final int userhp;
  final Function selectHandler3;
  QuizRewardScreen(this.userhp,this.selectHandler3);
  var z =true;
  @override
  Widget build(BuildContext context) {
    if (userhp>0){print("congrats you have won : !! ");
    z=true;}
    else{z=false;}
    return Container(
      child:Column(children: [
        Text("Rewards :" , style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold) , ) ,
        z?Text("you have won! congrats"):Text("you have lostt, pls try again"),
        ElevatedButton(onPressed: selectHandler3, child: Text("Back to MAP !"))
      ], )
      
    );
  }
}
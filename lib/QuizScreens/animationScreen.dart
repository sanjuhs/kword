import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  //const AnimationScreen({ Key? key }) : super(key: key);
  
  final int userhp;
  final int monsterhp;
  final Function selectHandler;
  AnimationScreen({this.monsterhp,this.userhp,this.selectHandler , Key key}): super(key:key);
  @override
  _AnimationScreenState createState() => _AnimationScreenState(monsterhp: monsterhp,userhp: userhp);
}

class _AnimationScreenState extends State<AnimationScreen> {
  final int userhp;
  final int monsterhp;
  _AnimationScreenState({this.monsterhp,this.userhp});

  void printdata(userhp,monsterhp){print(" hp is" + (monsterhp).toString() + " " + (userhp).toString());}
  
  @override
  Widget build(BuildContext context) {
    printdata(userhp, monsterhp);
    return Container(
      height: 300, width: double.infinity,alignment:Alignment.center ,
      
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text("Monster hp is : $monsterhp  ") , Text("UserHp is : $userhp") ],
        ), 
    );
  }
}
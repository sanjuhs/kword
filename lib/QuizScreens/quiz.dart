import 'package:flutter/material.dart';
import 'package:kword1/JourneyFilesAndMapScreen/mapScreen.dart';
import 'package:kword1/QuizScreens/animationScreen.dart';
import 'package:kword1/QuizScreens/quizQuestionScreen.dart';
import 'quizAnswerScreen.dart';
import 'quizRewardScreen.dart';





class Quiz extends StatefulWidget {
  //const Quiz({ Key? key }) : super(key: key);
  final List _questions;
  final List qlist;
  Quiz(this._questions ,this.qlist );
  @override
  _QuizState createState() => _QuizState(_questions, qlist );
}

class _QuizState extends State<Quiz> {
  // final _questions = const [
  //   {
  //     'questionText': "what does the word Mull mean ? ",
  //     'type':'flash',
  //     'qid':1,
  //     'level':'1',
  //     'options': [ 'Mull','Dull','Gull','Stull',],
  //     'answerText':'Mull',
  //     'answerExplain':'Mull : means to think Deeply !!'
  //   },
  // ];
  final List<Questions> _questions;
  final List qlist;
  _QuizState(this._questions ,this.qlist );

  //var qlist =[0,1,2,3,4];
  //var qlist = new List<int>.generate(qlistlen, (i) => i + 1);
  var monsterhp =200;
  var userhp=100;
  var monsterAttack=20;
  var userAttack=50;
  var c=1;
  var f =true;
  var boolhp=true;

  void selectHandler(bool iscorrect ,){
    c=c+1;
    f=iscorrect;
    // print("The value of C is : " + c.toString());
    // if (c %2==0){
    if (iscorrect){
      print("this is corecttttttttttt!!!");
      monsterhp=monsterhp-userAttack;
      print(monsterhp);
      
      }
    else{
      print("this is wrongggggggggg!!!!!!!!!!!");
      print(monsterhp);
      userhp=userhp-monsterAttack;

      }
      setState(() {
            });
    //}
    // else{
    //     setState(() {             
    //             });
    // }
  }

  void selectHandler2(bool f){
    if (f){
      var mixx=qlist[0];
      qlist.removeAt(0);
      qlist.insert(qlist.length, mixx);
      print(qlist);
    }
    else{
      var mixx=qlist[0];
      qlist.removeAt(0);
      qlist.insert((qlist.length~/2), mixx);
      print(qlist);
    }
    if (monsterhp==0 || userhp==0){
      boolhp=false;
    }
    setState(() {
          c=c+1;
        });
  }

  void selectHandler3(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    print(monsterhp);
    print(userhp);
    var monsterhp1=monsterhp;
    var userhp1=userhp;
    void qQscreen(){}
    return Scaffold(
      body: SingleChildScrollView(
        
        //2 parts the animation and the question
        //the question by default as qcount =0
        //
        child: Center(
          child:
          boolhp?
          c%2==1 ? Column(children: [
            AnimationScreen(monsterhp: monsterhp1,userhp: userhp1,selectHandler: selectHandler,key: UniqueKey(),),
            QuizQuestionScreen(qlist: qlist, questions: _questions, selectHandler: selectHandler,),
          ],):
          Column(children: [
            AnimationScreen(monsterhp: monsterhp1,userhp: userhp1,selectHandler: selectHandler,key: UniqueKey(),),
            Text("XXXXXXXXXXXXXXXXXX"),
            QuizAnswerScreen(qlist: qlist, questions: _questions, selectHandler: () => selectHandler2(f),),
          ],)
          :
          //Text("Rewrds"),
          QuizRewardScreen(userhp,()=>selectHandler3()),
        ),
      ),
    );
  }
}
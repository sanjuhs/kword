import 'package:flutter/material.dart';
import 'package:kword1/QuizScreens/quiz.dart';


import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
int j =1;
///
/// find below to get the questions
///
///

Future<List<Questions>> fetchQuestions(http.Client client) async {
  final response = await client.get(Uri.parse('https://cryptic-plateau-88007.herokuapp.com/api/questions/getQuestionsByLevel?level='+j.toString()));
  print("Response bodu is : " + response.body);
  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseQuestions, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Questions> parseQuestions(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Questions>((json) => Questions.fromJson(json)).toList();
}

class Questions {
  final String questionText;
  final String type;
  final int qid;
  final int level;
  final List options;
  final String answerText;
  final String answerExplain;

  Questions({
    @required this.questionText,
    @required this.type,
    @required this.qid,
    @required this.level,
    @required this.options,
    @required this.answerText,
    @required this.answerExplain,
  });
  factory Questions.fromJson(  Map<String, dynamic> json) {
    return Questions(
      questionText: json['questionText'] as String,
      type: json['type'] as String,
      qid: json['qid'] as int,
      level: json['level']as int,
      options: json['options'] as List,
      answerText: json['answerText'] as String,
      answerExplain: json['answerExplain'] as String , 
    );
  }

}
class GetQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Questions>>(
        future: fetchQuestions(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? Quiz(snapshot.data ,  List<int>.generate(snapshot.data.length, (i) => i ) ) 
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}




///find above to load the questions
///XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
///XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


class MapScreen extends StatefulWidget {
  //const MapScreen({ Key? key }) : super(key: key);



  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

    setit(int i ){
      setState(() {
              j=i;
            });
    }

    void pushQuiz(BuildContext ctx , int i){
    setit(i);
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){return GetQuestions();},));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (ctx,i){
      return Container(
        padding: EdgeInsets.all(5),
        height: 200,
        child: Card(elevation: 5,
          child: TextButton(child: Text("$i" ) , onPressed: (){return pushQuiz(ctx , i);}, ), ),
      );
      } , itemCount: 12, reverse: true,);
  }
} 
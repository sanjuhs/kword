import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
final Function selectHandler;
final String answerText;
// final bool isCorrect;
AnswerOption(this.selectHandler, this.answerText,); //this.isCorrect);

// if(actualAnswer==answerText ){};
@override
Widget build(BuildContext context) {
	return Container(
    padding: EdgeInsets.all(5),
	width: double.infinity,
	child: ElevatedButton(
		// color: Color(0xFF00E676),
		// textColor: Colors.white,
		child: Text(answerText),
		onPressed: selectHandler,//(isCorrect),
	), //RaisedButton
	); //Container
}
}
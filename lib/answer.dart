import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String AnswerText;
  final Function selectHandler;

  Answer(this.selectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: selectHandler,
            child: Text(AnswerText)));
  }
}

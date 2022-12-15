import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whar\'s your favorite color?',
      'Whar\'s your favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('The Question!')),
      body: Column(children: <Widget>[
        ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
        ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion),
        ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion),
      ]),
    ));
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
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
        Text(questions[_questionIndex]),
        ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
        ElevatedButton(
            child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen')),
        ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () {
              // ...
              print('Answer 3 chosen');
            }),
      ]),
    ));
  }
}

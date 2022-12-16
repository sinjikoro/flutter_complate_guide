import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Whar\'s your favorite color?',
      'answers': ['White', 'Red', 'Blue', 'Green']
    },
    {
      'questionText': 'Whar\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Fish', 'Lion']
    },
    {
      'questionText': 'Whar\'s your favorite Team?',
      'answers': ['Giants', 'Hanshin', 'NipponHum', 'BayStars']
    }
  ];

  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('The Question!')),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
            )
          : Result(),
    ));
  }
}

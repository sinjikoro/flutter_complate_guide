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
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
      ]
    },
    {
      'questionText': 'Whar\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 10},
        {'text': 'Fish', 'score': 1},
        {'text': 'Lion', 'score': 5},
      ]
    },
    {
      'questionText': 'Whar\'s your favorite Team?',
      'answers': [
        {'text': 'Giants', 'score': 1},
        {'text': 'Hanshin', 'score': 10},
        {'text': 'NipponHum', 'score': 5},
        {'text': 'BayStars', 'score': 3},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print('Answer chosen!');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
          : Result(_totalScore, _resetQuiz),
    ));
  }
}

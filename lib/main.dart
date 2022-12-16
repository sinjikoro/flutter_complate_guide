import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
          ? Column(children: <Widget>[
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map(((answer) {
                return Answer(_answerQuestion, answer);
              }))
            ])
          : Center(child: Text('You did it!')),
    ));
  }
}

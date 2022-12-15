import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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
        ElevatedButton(child: Text('Answer 1'), onPressed: null),
        ElevatedButton(child: Text('Answer 2'), onPressed: null),
        ElevatedButton(child: Text('Answer 3'), onPressed: null),
      ]),
    ));
  }
}

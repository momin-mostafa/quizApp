import 'package:flutter/material.dart';
import 'question.dart';
import 'answere.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex >= 3) {
      _questionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your fav color',
        'answers': ['red', 'green', 'blue', 'indigo']
      },
      {
        'questionText': 'what is your fav football team',
        'answers': ['argentina', 'brazil', 'france', 'spain']
      },
      {
        'questionText': 'what is your fav food',
        'answers': ['bangla', 'indian land', 'western', 'voxod']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Quiz App",
            ),
          ),
          backgroundColor: Color.fromRGBO(38, 42, 83, 0.9),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'].toString(),
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

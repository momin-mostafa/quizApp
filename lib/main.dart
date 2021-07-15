import 'package:flutter/material.dart';
import './questions.dart';
import './answeres.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexOfQuestion = 0;
  var indexOfAnswere = -1;
  var questions = [
    "what is your fav color",
    "what is your fav football team",
    "what is your fav food"
  ];
  var anslist = [
    'red',
    'green',
    'blue',
    'argentina',
    'brazil',
    'france',
    'bangla',
    'indian',
    'western',
  ];
  void _question() {
    print('button pressed.');
    setState(() {
      indexOfQuestion += 1;
    });

    if (indexOfQuestion >= 3) indexOfQuestion = 0;
  }

  String _answere() {
    print("answere button index++");
    setState(() {
      indexOfAnswere += 1;
    });
    if (indexOfAnswere >= 9) indexOfAnswere = 0;
    return anslist[indexOfAnswere];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Project rescue"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Column(
          children: [
            Question(
              questions[indexOfQuestion],
            ),
            Divider(),
            RaisedButton(
              onPressed: _question,
              child: Answere(_answere()),
              color: Colors.indigoAccent[400],
              textColor: Colors.white,
            ),
            Divider(),
            RaisedButton(
              onPressed: _question,
              child: Answere(_answere()),
              color: Colors.indigoAccent[400],
              textColor: Colors.white,
            ),
            Divider(),
            RaisedButton(
              onPressed: _question,
              child: Answere(_answere()),
              color: Colors.indigoAccent[400],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;
  Question(this.qText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(13.0),
      child: Text(
        qText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}

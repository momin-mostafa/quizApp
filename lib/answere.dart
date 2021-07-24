import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandeler;
  final String answerText;
  Answer(this.selectHandeler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          //backgroundColor: Colors.indigoAccent[400],
          backgroundColor: Color.fromRGBO(97, 85, 166, 1),
        ),
        onPressed: selectHandeler,
      ),
    );
  }
}

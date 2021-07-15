import 'package:flutter/material.dart';

class Answere extends StatelessWidget {
  final String ans;
  Answere(this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      padding: EdgeInsets.all(10.0),
      width: 230,
      child: Text(
        ans,
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}

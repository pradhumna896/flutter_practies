import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize:30.0),textAlign: TextAlign.center,
      ),
    );
  }
}

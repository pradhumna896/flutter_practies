import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String ansewrText;
  Answer(this.selectHandler,this.ansewrText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ansewrText),
        onPressed: selectHandler,
      ),
    );
  }
}

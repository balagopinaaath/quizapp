import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final void Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.cyan),
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
          // style: ElevatedButton.styleFrom(primary: Colors.blue[500]),
          onPressed: selectHandler,
          child: Text(answerText)
      ),
    );
  }
}


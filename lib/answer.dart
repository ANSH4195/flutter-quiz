import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String optionText;
  final void Function() answerHandler;

  Answer(this.optionText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
        ),
        onPressed: answerHandler,
        child: Text(optionText),
      ),
    );
  }
}

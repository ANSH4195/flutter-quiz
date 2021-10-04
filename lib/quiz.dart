import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int index;
  final List<Map> questions;
  final void Function() optionAction;

  Quiz({
    required this.index,
    required this.questions,
    required this.optionAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'],
        ),
        ...(questions[index]['options']
            .map((option) => Answer(option, optionAction))
            .toList()),
      ],
    );
  }
}

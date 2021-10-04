import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  int _index = 0;
  final List<Map> _questions = const [
    {
      'questionText': "What car would you want?",
      'options': ['Bentley', 'BMW', 'Jaguar', 'Pagani', 'Koenigsegg']
    },
    {
      'questionText': "What color your car should be?",
      'options': ['RGB', 'HEX', 'CMYK']
    },
    {
      'questionText': "Where would you want it delivered?",
      'options': ['At Home', 'At Work']
    },
  ];

  void _optionAction() => setState(() => _index += 1);

  void _resetIndex() => setState(() => _index = 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Car Quiz'),
        ),
        body: _index < _questions.length
            ? Quiz(
                index: _index,
                questions: _questions,
                optionAction: _optionAction,
              )
            : Result('Thank you for the precise answers!', _resetIndex),
      ),
    );
  }
}

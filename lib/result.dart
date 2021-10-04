import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final void Function() resetIndex;

  Result(this.text, this.resetIndex);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blueAccent),
            ),
            onPressed: resetIndex,
            child: Text('Try Again',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

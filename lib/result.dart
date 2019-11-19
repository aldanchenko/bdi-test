import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    var resultText = '';

    if (resultScore <= 13) {
      resultText = 'Нормальное состояние.';
    } else if (resultScore <= 19) {
      resultText = 'Легкое депрессивное расстройство.';
    } else if (resultScore <= 28) {
      resultText = 'Депрессивное расстройство средней степени тяжести.';
    } else {
      resultText = 'Депрессивное расстройство тяжелой степени тяжести.';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart'),
            onPressed: resetQuizHandler,
            textColor: Colors.blue,
          )
        ],
      )
    );
  }
}

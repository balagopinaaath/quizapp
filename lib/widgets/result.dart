import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final VoidCallback resultHandle;
  Result(this.finalResult, this.resultHandle);


  String get resultPhase {
    String resultText;
    if(finalResult >= 50) {
      resultText = 'You\'re Awesome. Your Score is $finalResult';
    } else if(finalResult >= 40) {
      resultText = 'You\'re Rocking. Your Score is $finalResult';
    } else if(finalResult >= 30) {
      resultText = 'You\'re Beautify. Your Score is $finalResult';
    } else if(finalResult >= 20) {
      resultText = 'You\'re Good. Your Score is $finalResult';
    } else {
      resultText = 'You\'re too bad. Your Score is $finalResult';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),

          ElevatedButton(
              onPressed: resultHandle,
              child: Text('Reset'),
          )


        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/widgets/question.dart';
import 'package:quizapp/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final VoidCallback answerTheQuestion;

  Quiz({
    required this.question,
    required this.questionIndex,
    required this.answerTheQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String, //.toString(),
        ),
        ...(question[questionIndex]['answerTheQuestions']
                as List<Map<String, Object>>)
            .map((answer) => Answer(
                () => answerTheQuestion(),
                answer['text'] as String))
            .toList()
        // ElevatedButton(onPressed: answerTheQuestion, child: Text('Answer')),
      ],
    );
  }
}

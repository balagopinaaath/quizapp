import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/widgets/question.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionIndex = 0;

  void answerTheQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'How many days are there in a week?',
        'answerTheQuestions': ['7', '8', '5', '6'],
      },
      {
        'questionText': 'How many hours are there in a day?',
        'answerTheQuestions': ['17', '12', '24', '16'],
      },
      {
        'questionText': 'How many letters are there in the English alphabet?',
        'answerTheQuestions': ['10', '21', '26', '36'],
      },
      {
        'questionText': 'Rainbow consist of how many colours?',
        'answerTheQuestions': ['7', '8', '5', '6'],
      },
      {
        'questionText': 'How many minutes are there in an hour?',
        'answerTheQuestions': ['27', '48', '55', '60'],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: [
          Question(
            question[questionIndex]['questionText'].toString(),
          ),
          ...(question[questionIndex]['answerTheQuestions'] as List<String>).map((answer) => Answer(() => answerTheQuestion, answer)).toList()
          // ElevatedButton(onPressed: answerTheQuestion, child: Text('Answer')),
        ],
      ),
    );
  }
}

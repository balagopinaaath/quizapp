import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/widgets/question.dart';
import 'package:quizapp/widgets/quiz.dart';
import 'package:quizapp/widgets/result.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final question = [
    {
      'questionText': 'How many days are there in a week?',
      'answerTheQuestions': [
        {'text': '7', 'score': 10},
        {'text': '8', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0}
      ],
    },
    {
      'questionText': 'How many hours are there in a day?',
      'answerTheQuestions': [
        {'text': '17', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '24', 'score': 10},
        {'text': '16', 'score': 0}
      ]
    },
    {
      'questionText': 'How many letters are there in the English alphabet?',
      'answerTheQuestions': [
        {'text': '10', 'score': 0},
        {'text': '21', 'score': 0},
        {'text': '26', 'score': 10},
        {'text': '36', 'score': 0}
      ]
    },
    {
      'questionText': 'Rainbow consist of how many colours?',
      'answerTheQuestions': [
        {'text': '7', 'score': 10},
        {'text': '8', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0}
      ]
    },
    {
      'questionText': 'How many minutes are there in an hour?',
      'answerTheQuestions': ['27', '48', '55', '60'],
    },
  ];
  int questionIndex = 0;
  int totalScore = 0;

  void answerTheQuestion() {

    setState(() {
      questionIndex += 1;
      // totalScore += score;
    });
    if (questionIndex < question.length) {
      print('We have no more questions');
    }
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: questionIndex < question.length
          ? Quiz(
              answerTheQuestion: answerTheQuestion,
              questionIndex: questionIndex,
              question: question,
            )
          : Result(),
    );
  }
}

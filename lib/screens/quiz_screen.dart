import 'package:flutter/material.dart';
import 'package:personality_quiz_app/screens/result_screen.dart';
import 'package:personality_quiz_app/widgets/answers.dart';
import '../widgets/questions.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  int questionNumber = 0;
  int totalScore = 0;
  final List questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  void answerquestion(int score) {
    totalScore = score + totalScore;
    setState(() {
      questionNumber++;
    });
  }

  void resetQuiz() {
    setState(() {
      questionNumber = 0;
      totalScore = 0;
    });
  }

  String get decision {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are Awesome and Innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (totalScore <= 8) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personality Quiz')),
      body: questions.length > questionNumber
          ? Column(children: [
              Questions(
                  questions:
                      questions[questionNumber]['questionText'] as String),
              ...(questions[questionNumber]['answers']
                      as List<Map<String, dynamic>>)
                  .map((answer) {
                return Answers(
                    answers: answer['text'],
                    answerquestion: () {
                      answerquestion(answer['score']);
                    });
              }).toList()
            ])
          : ResultScreen(
              resultScore: (() {
                resetQuiz();
              }),
              decision: decision),
    );
  }
}


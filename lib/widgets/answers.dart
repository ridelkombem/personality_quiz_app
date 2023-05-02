import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answers;
  final Function answerquestion;
  const Answers({
    Key? key,
    required this.answers,
    required this.answerquestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          answerquestion();
        },
        splashColor: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.green),
          height: 50,
          child: Card(
            elevation: 10,
            child: Center(
              child: Text(
                answers,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

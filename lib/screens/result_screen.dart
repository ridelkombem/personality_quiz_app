import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  final String decision;
  final VoidCallback resultScore;
  const ResultScreen({
    Key? key,
    required this.resultScore,
    required this.decision,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              decision,
              style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.green),
            onPressed: resultScore,
            child: const Text(
              'Reset Quiz',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

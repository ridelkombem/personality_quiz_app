import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;
  const Questions({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.green),
        height: 100,
        child: Card(
          elevation: 10,
          child: Center(
              child: Text(
            questions,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

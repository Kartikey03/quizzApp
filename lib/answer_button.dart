import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText, 
    required this.selectHandler,}); 

  final String answerText;
  final void Function() selectHandler;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectHandler,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: const Color.fromARGB(255, 6, 46, 79),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(answerText),
    );
  }
}

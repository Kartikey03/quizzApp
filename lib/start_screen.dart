import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 3, 38, 67),
          ),

          const SizedBox(height: 20,),

          const Text(
            'Welcome to the Bollywood Quiz!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 20,),


          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizzapp/questions.dart';
import 'package:quizzapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activeScreen = "startScreen";
  
  void switchScreen() {
    setState(
      () {
        activeScreen = "questionsScreen";
      }
    );
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "questionsScreen"){
      screenWidget = const Questions();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Color.fromARGB(255, 21, 62, 107)],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

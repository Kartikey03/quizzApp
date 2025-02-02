import 'package:flutter/material.dart';
import 'package:quizzapp/answer_button.dart';
import 'package:quizzapp/data/ques.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState(){
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>{
  @override
  Widget build(context){
    final curerntQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(curerntQuestion.text, 
        style: const TextStyle(fontSize: 24, color: Colors.white),),
      
        const SizedBox(height: 30,),
        AnswerButton(answerText: curerntQuestion.answers[0], selectHandler: () {}),

        const SizedBox(height: 30,),
        AnswerButton(answerText: curerntQuestion.answers[1], selectHandler: () {}),

        const SizedBox(height: 30,),
        AnswerButton(answerText: curerntQuestion.answers[2], selectHandler: () {}),

        const SizedBox(height: 30,),
        AnswerButton(answerText: curerntQuestion.answers[3], selectHandler: () {}),
      ],),
    );
  }
}
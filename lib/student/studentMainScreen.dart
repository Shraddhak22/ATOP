import 'package:flutter/material.dart';

import './surveyQuestions.dart';

class Studentmainscreen extends StatefulWidget {
  @override
  _StudentmainscreenState createState() => _StudentmainscreenState();
}

class _StudentmainscreenState extends State<Studentmainscreen> {
  final _questions = [
    {
      'questionText':
          'Please rate your overall satisfaction with your Professor.',
      'answers': [
        'Very Dissatisfied',
        'Dissatisfied',
        'Neutral',
        'Satisfied',
        'Very Satisfied'
      ],
    },
    {
      'questionText': 'Explained course objectives clearly',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Was prepared for each class',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Maintained positive classroom environment',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Made class enjoyable as well as educational',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Communicated clearly',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Communicated candidly and constructively',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Showed expertise in the subject matter',
      'answers': ['1', '2', '3', '4', '5'],
    },
    {
      'questionText': 'Was current with developments in field',
      'answers': ['1', '2', '3', '4', '5'],
    },
  ];
  var _questionIndex = 0;
  String radioGroupValue;
  void _answerQuestion(val) {
    setState(() {
      radioGroupValue = val;
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _questionIndex++;
        radioGroupValue = "";
      });
    });
    //  print("Answer chosen!!");
    print(_questionIndex);
    // return _questionIndex;
  }

  _navigateQuestion(val) {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Assess the one who Profess"),
          ),
          body: _questionIndex < _questions.length
              ? Survey(_questions, _questionIndex, _answerQuestion,
                  radioGroupValue, _navigateQuestion)
              : Center(
                  child: Text("Thank you for your time"),
                )),
    );
  }
}

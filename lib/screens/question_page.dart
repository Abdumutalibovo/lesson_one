import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/question_model.dart';
import 'package:quiz_app/screens/result_page.dart';
import 'package:quiz_app/screens/timer_widget.dart';
import 'package:quiz_app/utils/images.dart';
import 'package:quiz_app/widgets/answers_widget.dart';
import 'package:quiz_app/widgets/progress_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class questionPage extends StatefulWidget {
  const questionPage({super.key});

  @override
  State<questionPage> createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
  @override
  int currentQuestonIndex = 0;
  int start = 15;
  String buttonText = "Next";

  Map<int, bool> userResult = {
    0:false,
    1:false,
    2:false,
    3:false,
    4:false,
  };


  @override
  void initState() {
    super.initState();
  
   Timer.periodic(Duration(seconds: 1), (timer) {
      if (start != 0) {
        setState(() {
          start--;
        });
      } else {
        nextQuestion();
      }
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 36),
                  child: Text(
                    "Programming Test",
                    style: TextStyle(fontSize: 18),
                  )),
                  SizedBox(height: 50,),
                ProgressWidget(
            currentWidth: (MediaQuery.of(context).size.width * 0.78) *
                ((currentQuestonIndex + 1) / QuestionModel.questions.length),
          ),
          SizedBox(height: 50,),

                 Stack(
            children: [
              Positioned(
                child: TimerWidget(second: start),
                top: 10,
                left: 10,
              ),
              Container(
                height: 60,
                width: 60,
                child: TweenAnimationBuilder<double>(
                  builder: (BuildContext context, value, Widget? child) {
                    return CircularProgressIndicator(
                      strokeWidth: 6,
                      backgroundColor: Colors.transparent,
                      color: Colors.red,
                      value: value,
                    );
                  },
                  tween: Tween<double>(begin: 0.0, end: start / 15),
                  duration: Duration(seconds: 1),
                ),
              ),
            ],
          ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: QuestionWidget(
                    QuestionTitle:
                        QuestionModel.questions[currentQuestonIndex].question,
                    index: currentQuestonIndex + 1),
              ),
              SizedBox(
                height: 16,
              ),
              AnswersWidget(
                questionModel: QuestionModel.questions[currentQuestonIndex],
                onAnswerSelected: (isTrue) {
                  userResult[currentQuestonIndex] = isTrue;
                },
              ),
              SizedBox(
                height: 36,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: nextQuestion,
                      child: Text(buttonText)))
            ],
          ),
        ),
      ),
    );
  }
  nextQuestion() {
    setState(() {
      if (buttonText == "Finish") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => resultPage(
              userResult: userResult,
            ),
          ),
        );
      }
      if (currentQuestonIndex != QuestionModel.questions.length - 1) {
        start = 15;
        currentQuestonIndex++;
      }
      if (currentQuestonIndex == QuestionModel.questions.length - 1) {
        buttonText = "Finish";
      }
    });
  }
}


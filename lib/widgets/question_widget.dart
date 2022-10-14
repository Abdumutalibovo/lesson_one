import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/question_model.dart';
import 'package:quiz_app/widgets/answers_widget.dart';
import 'package:quiz_app/widgets/option_widget.dart';

class QuestionWidget extends StatelessWidget {
  String QuestionTitle;
  int index;
  QuestionWidget({Key? key, required this.QuestionTitle, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 64,),
        Container(
          child: Text(
            "Question - ${index}",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF6066D0),
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(QuestionTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ],
    );
  }
}

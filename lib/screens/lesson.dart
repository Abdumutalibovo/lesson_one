import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/utils/images.dart';

class lessonPage extends StatelessWidget {
  const lessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Lottie.asset(myImages.save_lottie),
      ),
    );
  }
}
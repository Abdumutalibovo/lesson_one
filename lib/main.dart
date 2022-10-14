import 'package:flutter/material.dart';
import 'package:quiz_app/screens/first_page.dart';
import 'package:quiz_app/screens/lesson.dart';
import 'package:quiz_app/screens/login_register_page.dart';
import 'package:quiz_app/screens/menuPage.dart';
import 'package:quiz_app/screens/otp_page.dart';
import 'package:quiz_app/screens/register_page.dart';
import 'package:quiz_app/screens/question_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lessonPage(),
    );
  }
}
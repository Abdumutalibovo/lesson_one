import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/login_register_page.dart';
import 'package:quiz_app/screens/menuPage.dart';
import 'package:quiz_app/utils/images.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class firsPage extends StatefulWidget {
  const firsPage({super.key});

  @override
  State<firsPage> createState() => _firsPageState();
}

class _firsPageState extends State<firsPage> {

  bool isLog = false;

  Future<bool> isLoggedIn() async {
  
    SharedPreferences _pref = await SharedPreferences.getInstance();
    isLog = _pref.getBool("isLoggedIn") ?? false;
    return _pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();
    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return isLog ? menuPage() : loginRegPage();
          },
        ),
      );
          });
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF4047C1),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(myImages.background_image), fit: BoxFit.cover)
        ),
        child: Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28, color: Color(0xFFFFFEFC)),)),
        ),
      ),
    );
  }
}
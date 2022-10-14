import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/login_register_page.dart';
import 'package:quiz_app/utils/images.dart';

class firsPage extends StatefulWidget {
  const firsPage({super.key});

  @override
  State<firsPage> createState() => _firsPageState();
}

class _firsPageState extends State<firsPage> {
  @override

  void initState() {
    super.initState();
    onNextPage();
  }

   onNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginRegPage()));
    });
  }
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
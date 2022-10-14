import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/menuPage.dart';
import 'package:quiz_app/screens/question_page.dart';
import 'package:quiz_app/utils/images.dart';

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, centerTitle: true,
        title:  Text("Register", style: TextStyle(color: Colors.black, fontSize: 27),)),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  width: double.infinity,
                  child: Center(child: SvgPicture.asset(myImages.quiz_label, width: 140,)),),
              ),
              SizedBox(height: 110,),
              Container(
                  width: 320,
                  height: 60,
                 
              child: const TextField(
              style: TextStyle(),
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                 focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFCA82F))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
                hintText: "Enter your mobile number",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                ),
            ),
              ),
            SizedBox(height: 10,),
            Container(
                  width: 320,
                  height: 60,
                 
              child: const TextField(
              style: TextStyle(),
              keyboardType: TextInputType.phone,
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                 focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFCA82F))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
                hintText: "Password",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                ),
            ),
              ),
              SizedBox(height: 10,),
      
              Container(
                  width: 320,
                  height: 60,
                 
              child: const TextField(
              style: TextStyle(),
              keyboardType: TextInputType.phone,
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                hintText: "Confirm Password",
                 focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFCA82F))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                ),
            ),
              ),
              SizedBox(height: 20,),
              Container(
                  width: 210,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCA82F),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => menuPage()),
        );
                    },
                    child: Center(child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 20),))),
                  ),
                  SizedBox(height: 34,),
                  Text("if you have already account click here", style: TextStyle(fontSize: 18,color: Colors.grey),)
            
          ],
        ),
      ),
    );
  }
}
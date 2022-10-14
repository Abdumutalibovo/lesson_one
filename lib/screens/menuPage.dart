import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/question_page.dart';
import 'package:quiz_app/screens/question_page2.dart';
import 'package:quiz_app/screens/question_page3.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/images.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Menu", style: TextStyle(fontSize: 24, color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(myImages.play_image, width: 200,)
              ),
              Container(
                height: 598,
                child: ListView(
                  shrinkWrap: true,
                  children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>questionPage()));
                },
                child: testButton(myColor.C_EC8772,myColor.C_EE709C,"Matematika", "1h:20m", "500")),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>questionPage2()));
                },
                child: testButton(myColor.C_4E79EE, myColor.C_12B0FB, "Qiziqarli", "2h:30m", "300")),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>questionPage3()));
                },
                child: testButton(myColor.C_A58ED1, myColor.C_EFBBE8, "Informatika", "1h:10m", "1000")),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){},
                child: testButton(myColor.C_7EABFE, myColor.C_8CCFD3, "Biologiya", "3h:30m", "800")),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){},
                child: testButton(myColor.C_EC8772, myColor.C_EE709C, "Ona tili", "4h:30m", "800")),
                  ],
                ),
              )
              
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

Widget testButton(Color color1, Color color2,String text, String hours, String dollor){
  return  Stack(
              children:[ 
                Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  color1,
                  color2,
                ]),
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              Positioned(
                left: 28,
                top: 50,
                child: Text(text, style: TextStyle(color: Colors.white, fontSize: 24),)),
                Positioned(
                left: 150,
                top: 50,
                child: Text(hours, style: TextStyle(color: Colors.white, fontSize: 24),)),
                Positioned(
                left: 300,
                top: 50,
                child: Text("\$$dollor", style: TextStyle(color: Colors.white, fontSize: 24),)),
                Positioned(
                  top: 105,
                  left: 230,
                  child: Text("entry people - 200 seats", style: TextStyle(color: Colors.black.withOpacity(0.5)),))

              ]
            );
}
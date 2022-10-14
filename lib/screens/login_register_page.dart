import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/screens/otp_page.dart';
import 'package:quiz_app/utils/images.dart';

class loginRegPage extends StatelessWidget {
  const loginRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Login", style: TextStyle(color: Colors.black, fontSize: 27),),),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25),
                width: double.infinity,
                child: SvgPicture.asset(myImages.phone_icon, width: 260,)
                  ), 
                  Positioned(
                    left: 150,
                    top: 50,
                    child: SvgPicture.asset(myImages.quiz_label)),
                ],
              ), 
              SizedBox(height: 45,),
              Container(
                width: 300,
                height: 50,
               
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
              hintText: "Enter your mobile number",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              ),
          ),
        
            ),
              SizedBox(height: 25,),
              Container(
                width: 230,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFFCA82F),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => otpPage()),
  );
                  },
                  child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),))),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  child: Text("        term's and conditions apply\nPOWERED BY - sparrowdevops.com", style: TextStyle(color: Colors.grey),),
                ),
              )
            ]
            ),
        ));
  }
}

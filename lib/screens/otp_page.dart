import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/screens/register_page.dart';
import 'package:quiz_app/utils/images.dart';

class otpPage extends StatelessWidget {
  const otpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Otp", style: TextStyle(color: Colors.black, fontSize: 27),),),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: double.infinity,
                child: Center(child: SvgPicture.asset(myImages.quiz_label, width: 140,)),),
            ),
            SizedBox(height: 80,),
            Text("Enter your 6 digit otp here",style: TextStyle(fontSize: 20, color: Colors.grey),),
            SizedBox(height: 80,),
            Container(child: SvgPicture.asset(myImages.nuqtacha_icon),),
            SizedBox(height: 60,),
            Container(
                width: 230,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFFCA82F),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => registerPage()),
  );
                  },
                  child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),))),
                ),
                SizedBox(height:10 ,),
              Text("login with social media",style: TextStyle(color: Colors.grey, fontSize: 16),),
              Padding(
                padding: const EdgeInsets.only(top: 130,left: 70),
                child: Container(
                  width: double.infinity,
                  child: Center(child: Image.asset(myImages.nature_image)),
                ),
              )
          ],
        ),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class resultPage extends StatelessWidget {

  Map<int,bool> userResult;
 resultPage({super.key,required this.userResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        children: [
          SizedBox(height: 24,),
          Center(child: Text("Your Result", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),)),
          SizedBox(height: 10,),
          ListView.separated(
            shrinkWrap: true,
            itemCount: userResult.length,
            itemBuilder: (BuildContext context, int index){
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Question ${index+1}", style: TextStyle(fontSize: 24),),
                  SizedBox(width: 30,),
                  userResult[index]!
                  ?const Icon(Icons.check, color: Colors.green,)
                  :const Icon(Icons.clear, color: Colors.red,)
                ],
              ),
            );
          },
          separatorBuilder: (context, index){
            return SizedBox(width: 8,);
          },
          )
        ],
      ),
    );
  }
}
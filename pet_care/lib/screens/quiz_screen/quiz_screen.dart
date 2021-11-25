import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('QUIZ'),
              SizedBox(height: 20,),
              quizProfile()
            ],
          ),
        ),
      ),
    );
  }

  quizProfile(){
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
            child: Container(
              color: CustomColor.kTealColor,
              child: Image.asset(ImgUrl.daily_question, scale: 1.5,),
            )
        ),

        SizedBox(height: 15,),
        Text("Daily Question", style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22
        ),),

        SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.black),),
        ),

        SizedBox(height: 15,),

        Container(
          height: 45,
          width: Get.width,
          margin: EdgeInsets.only(right: 15, left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade200
          ),
          child: Center(
            child: Text("Lorem Ipsum is simply dummy text of the printing",
              style: TextStyle(color: Colors.grey),),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          height: 45,
          width: Get.width,
          margin: EdgeInsets.only(right: 15, left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200
          ),
          child: Center(
            child: Text("Lorem Ipsum is simply dummy text of the printing",
              style: TextStyle(color: Colors.grey),),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          height: 45,
          width: Get.width,
          margin: EdgeInsets.only(right: 15, left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200
          ),
          child: Center(
            child: Text("Lorem Ipsum is simply dummy text of the printing",
              style: TextStyle(color: Colors.grey),),
          ),
        )
      ],
    );
  }
}

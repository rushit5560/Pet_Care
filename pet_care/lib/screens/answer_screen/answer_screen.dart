import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('ANSWER'),
              dailyQuestionContainer(),
              SizedBox(height: 20,),
              answer(),
              SizedBox(height: 15,),
              gotItButton()
            ],
          ),
        ),
      ),
    );
  }

  dailyQuestionContainer(){
    return Container(
      margin: EdgeInsets.only(top:10, left: 10, right: 10),
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Container(
                color: CustomColor.kAppBarColor,
                child: Image.asset(ImgUrl.daily_question, scale: 2,),
              )
          ),
          SizedBox(height: 15,),
          Text("Daily Question", style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 21
          ),),

          SizedBox(height: 15,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.black),),

          SizedBox(height: 15,),

          Container(
            height: 45,
            width: Get.width,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: CustomColor.kTealColor
            ),
            child: Center(
              child: Text("Lorem Ipsum is simply dummy text of the printing",
                style: TextStyle(color: Colors.black, fontSize: 15),),
            ),
          ),

          SizedBox(height: 20,),
        ],
      )
    );
  }

  answer(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ],
    );
  }

  gotItButton(){
    return Container(
      height: 45,
      width: Get.width/2.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: CustomColor.kAppBarColor
      ),
      child: Center(
        child: Text("GOT IT",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
    );
  }
}

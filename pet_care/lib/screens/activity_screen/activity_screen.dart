import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/controller/activity_screen_controller.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({Key? key}) : super(key: key);

  ActivityScreenController activityScreenController = Get.put(ActivityScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('Activity'),
              activityImage(),
              SizedBox(height: 20,),
              activityList(),
              SizedBox(height: 20,),
              text(),
              SizedBox(height: 20,),
              checkBoxContainer(),
              SizedBox(height: 20,),
              completeButton()
            ],
          ),
        ),
      ),
    );
  }

  activityImage(){
    return Container(
      width: Get.width/3,
      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.kAppBarColor,
      ),
      child: Container(
        //width: Get.width/2,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              bottomLeft: Radius.circular(45),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: CustomColor.kTealColor
        ),
        child: Image.asset(ImgUrl.exercise5),
      ),
    );
  }

  activityList(){
    return Container(
      child: Text("Activity List",
        style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
    );
  }

  text(){
    return Container(
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 19),),
    );
  }

  checkBoxContainer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade400)
      ),
      child: Row(
        children: [
          Obx(()=>
             Checkbox(
               activeColor: CustomColor.kAppBarColor,
              checkColor: Colors.black,
              value: activityScreenController.checkbox.value,
              onChanged: (bool ? value) {
                activityScreenController.checkbox.value = value!;
              },
            ),
          ),

          Expanded(
            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
              style: TextStyle(color: Colors.black, fontSize: 19),),
          ),
        ],
      ),
    );
  }

  completeButton(){
    return Container(
      height: 40,
      width: Get.width/2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: CustomColor.kAppBarColor
      ),
      child: Center(
        child: Text("COMPLETE", style: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}

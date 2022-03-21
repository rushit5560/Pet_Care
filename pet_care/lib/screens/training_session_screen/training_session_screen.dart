import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';

class TrainingSessionScreen extends StatelessWidget {
  const TrainingSessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('TRAINING SESSION'),
              trainingSession(),
              training()
            ],
          ),
        ),
      ),
    );
  }

  trainingSession() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              bottomLeft: Radius.circular(45),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.grey.shade400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Training",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  training() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width/3,
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.kAppBarColor,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: CustomColor.kTealColor),

                child: Column(
                  children: [
                    Image.asset(ImgUrl.exercise1),

                    Text("Name", style: TextStyle(
                      color: Colors.black, fontSize: 18
                    ),)
                  ],
                ),
            )),

        Container(
            width: Get.width/3,
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.kAppBarColor,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: CustomColor.kTealColor),

              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(ImgUrl.exercise1),
                  ),

                  Text("Name", style: TextStyle(
                      color: Colors.black, fontSize: 18
                  ),)
                ],
              ),
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/models/exercise_screen_model.dart';

class MasterExerciseScreen extends StatelessWidget {
  MasterExerciseScreen({Key? key}) : super(key: key);

  List<ExerciseScreenModel> exerciseLists = [
    ExerciseScreenModel(
      img: '${ImgUrl.exercise1}',
      name: 'Handshake',
    ),
    ExerciseScreenModel(
      img: '${ImgUrl.exercise2}',
      name: 'Agility Walk',
    ),
    ExerciseScreenModel(
      img: '${ImgUrl.exercise3}',
      name: 'Jump',
    ),
    ExerciseScreenModel(
      img: '${ImgUrl.exercise4}',
      name: 'Play Ball',
    ),
    ExerciseScreenModel(
      img: '${ImgUrl.exercise5}',
      name: 'Sit',
    ),
    ExerciseScreenModel(
      img: '${ImgUrl.exercise6}',
      name: 'Agility Fun Run',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar('MASTER EXERCISES'),

            Expanded(
              child: exerciseGrid(),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  exerciseGrid(){
    return GridView.builder(
        shrinkWrap: true,
        itemCount: exerciseLists.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index){
          return Container(
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
                  color: CustomColor.kTealColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(exerciseLists[index].img)
                  ),
                  SizedBox(height: 10,),
                  Text(exerciseLists[index].name,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),)
                ],
              ),
            ),
          );

        });
  }
}

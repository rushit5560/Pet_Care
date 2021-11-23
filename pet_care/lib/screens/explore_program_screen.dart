import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/models/explore_program_model.dart';

class ExploreProgramScreen extends StatelessWidget {
  // const ExploreProgramPage({Key? key}) : super(key: key);

  List<ExploreProgramModel> programsLists = [
    ExploreProgramModel(
      img: '${ImgUrl.exp1Img}',
      programName: 'Basic Training',
      skillsCount: '30',
      time: '4'
    ),
    ExploreProgramModel(
        img: '${ImgUrl.exp2Img}',
        programName: 'Chasing Control',
        skillsCount: '30',
        time: '4'
    ),
    ExploreProgramModel(
        img: '${ImgUrl.exp3Img}',
        programName: 'Walking Pet',
        skillsCount: '30',
        time: '4'
    ),
    ExploreProgramModel(
        img: '${ImgUrl.exp4Img}',
        programName: 'Friendship Training',
        skillsCount: '30',
        time: '4'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            // Import From Common Widget File
            CustomAppBar('EXPLORE PROGRAM'),

            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: programsLists.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print('${programsLists[index].programName}');
                        },
                        child: Container(
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

                            child: Row(
                              children: [
                                Expanded(
                                  flex: 35,
                                  child: Image(
                                    image: AssetImage('${programsLists[index].img}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.06),
                                Expanded(
                                  flex: 65,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${programsLists[index].programName}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 22,
                                          // fontWeight: FontWeight.bold,
                                          fontFamily: "Lilita One"
                                        ),
                                      ),
                                      SizedBox(height: Get.height * 0.015),

                                      Text(
                                        '${programsLists[index].skillsCount} New Skills | ${programsLists[index].time} Weeks',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

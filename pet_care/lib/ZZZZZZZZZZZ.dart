import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';

import 'Common/img_url.dart';

class AAAA extends StatelessWidget {
  // const AAAA({Key? key}) : super(key: key);

  List dogImgLists = [
    '${ImgUrl.dog4Img}',
    '${ImgUrl.dog5Img}',
    '${ImgUrl.dog6Img}',
    '${ImgUrl.dog4Img}',
    '${ImgUrl.dog5Img}',
    '${ImgUrl.dog6Img}',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              // Training Program Module
              Container(
                height: Get.height * 0.16,
                decoration: BoxDecoration(
                  color: CustomColor.kBottomBarColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 35,
                      child: Image(
                        image: AssetImage(ImgUrl.dog1Img),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 65,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Training Programs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: CustomColor.kAppBarColor),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      child: Center(
                                        child: Text(
                                          'ASK A QUESTION',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: CustomColor.kAppBarColor,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      child: Center(
                                        child: Text(
                                          'EXPLORE PROGRAM',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.04),

              // Master Exercise Module
              Container(
                height: Get.height * 0.15,
                child: Row(
                  children: [
                    // Master Exercise
                    Expanded(
                      flex: 65,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Master Exercise',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                              color: CustomColor.kAppBarColor),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        child: Text(
                                          'Get Tricks',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: CustomColor.kAppBarColor,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 40,
                                child: Image(
                                  image: AssetImage(ImgUrl.dog2Img),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    // Clicked Sound
                    Expanded(
                      flex: 35,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CustomColor.kLightPinkColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 40,
                                child: Image(
                                  image: AssetImage(ImgUrl.dog3Img),
                                  fit: BoxFit.fill,
                                ),
                              ),

                              Expanded(
                                flex: 60,
                                child: Column(
                                  children: [

                                    Text(
                                      'Clicker Sound',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: Get.height * 0.005),

                                    Expanded(
                                      child: Image(
                                        image: AssetImage(ImgUrl.clicker),
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
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.04),

              // know about animal
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Know About Animal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.015),

              //Gridview
              Container(
                height: Get.height * 0.16,
                child: GridView.builder(
                  itemCount: dogImgLists.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10
                  ),
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColor.kBottomBarColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('${dogImgLists[index]}'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

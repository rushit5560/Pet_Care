import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/pages/profile_page.dart';

import 'notification_page.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  List<String> tabsList = <String>[
    'Dog',
    'Cat',
    'Mouse',
    'Parrot',
    'Hamsters',
    'Guinea Pigs',
    'Rabbits',
    'Turtle'
  ]; // L : 8

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
        child: Column(
          children: [
            customAppBar(),

            Container(
              child: DefaultTabController(
                length: tabsList.length,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      // height: 35,
                      child: TabBar(
                        labelColor: CustomColor.kAppBarColor,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: CustomColor.kAppBarColor,
                        isScrollable: true,
                        tabs: tabsList.map((title) => Tab(text: title)).toList(),
                      ),
                    ),

                    Container(
                      height: Get.height * 0.65,
                      child: TabBarView(
                        children: [
                          dogTab(),
                          catTab(),
                          dogTab(),
                          catTab(),
                          dogTab(),
                          catTab(),
                          dogTab(),
                          catTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customAppBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomColor.kBottomBarColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Hii Pet',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Good Morning'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=> NotificationPage(),
                      transition: Transition.rightToLeft
                    );
                  },
                  child: Container(
                    child: Icon(
                      Icons.notifications_rounded,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=> ProfilePage(),
                transition: Transition.leftToRight
              );
            },
            child: Container(
              height: Get.width * 0.16,
              width: Get.width * 0.16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomColor.kAppBarColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: AssetImage(ImgUrl.profileImg),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dogTab() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
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
                                fit: BoxFit.fitHeight,
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
    );
  }


  Widget catTab() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [

          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Image(
                    image: AssetImage(ImgUrl.dog1Img),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}


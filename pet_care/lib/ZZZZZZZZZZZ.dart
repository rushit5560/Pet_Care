import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';

import 'Common/img_url.dart';

class AAAA extends StatelessWidget {
  // const AAAA({Key? key}) : super(key: key);

  // List dogImgLists = [
  //   '${ImgUrl.dog4Img}',
  //   '${ImgUrl.dog5Img}',
  //   '${ImgUrl.dog6Img}',
  //   '${ImgUrl.dog4Img}',
  //   '${ImgUrl.dog5Img}',
  //   '${ImgUrl.dog6Img}',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Expansiontile()));
                      },
                      child: Text(
                          'ExpansionTile'
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: RaisedButton(
              //         onPressed: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (BuildContext context) =>
              //                       Expansionpanel()));
              //         },
              //         child: Text(
              //             'ExpansionPanel'
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //       'Expansion Tile'
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              SizedBox(height:20.0),
              ExpansionTile(
                title: Text(
                  "Title",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                children: <Widget>[
                  ExpansionTile(
                    title: Text(
                      'Sub title',
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text('data'),
                      )
                    ],
                  ),
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List imgLists = [
  '${ImgUrl.lesson1Img}',
  '${ImgUrl.lesson2Img}',
  '${ImgUrl.lesson3Img}'
];
List nameLists = ['Quiz', 'Training', 'Activity'];

Widget lessonWidget() {
  return GridView.builder(
    itemCount: imgLists.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColor.kAppBarColor,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                topLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: CustomColor.kTealColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('${imgLists[index]}'),
                    width: Get.width * 0.18,
                    height: Get.width * 0.18,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '${nameLists[index]}',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget lessonWidget2() {
  return Row(
    children: [

      //Quiz
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: CustomColor.kAppBarColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: CustomColor.kTealColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('${ImgUrl.lesson1Img}'),
                      width: Get.width * 0.18,
                      height: Get.width * 0.18,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Quiz',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      //Training
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: CustomColor.kAppBarColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: CustomColor.kTealColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('${ImgUrl.lesson2Img}'),
                      width: Get.width * 0.18,
                      height: Get.width * 0.18,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Training',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      //Activity
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: CustomColor.kAppBarColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: CustomColor.kTealColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('${ImgUrl.lesson3Img}'),
                      width: Get.width * 0.18,
                      height: Get.width * 0.18,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Activity',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

// SafeArea(
// child: Padding(
// padding: const EdgeInsets.all(10),
// child: Column(
// children: [
//
// // Training Program Module
// Container(
// height: Get.height * 0.16,
// decoration: BoxDecoration(
// color: CustomColor.kAppBarColor,
// borderRadius: BorderRadius.circular(10),
// ),
// child: Row(
// children: [
// Expanded(
// flex: 35,
// child: Image(
// image: AssetImage(ImgUrl.dog1Img),
// fit: BoxFit.cover,
// ),
// ),
// Expanded(
// flex: 65,
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 5),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Training Programs',
// style: TextStyle(
// fontWeight: FontWeight.bold, fontSize: 18),
// ),
// SizedBox(height: 12),
// Row(
// children: [
// Expanded(
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// border: Border.all(
// color: CustomColor.kAppBarColor),
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 5, horizontal: 5),
// child: Center(
// child: Text(
// 'ASK A QUESTION',
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// color: CustomColor.kAppBarColor,
// fontSize: 12),
// ),
// ),
// ),
// ),
// ),
// SizedBox(width: 10),
// Expanded(
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// border: Border.all(color: Colors.black),
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 5, horizontal: 5),
// child: Center(
// child: Text(
// 'EXPLORE PROGRAM',
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// color: Colors.black,
// fontSize: 12),
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(height: Get.height * 0.04),
//
// // Master Exercise Module
// Container(
// height: Get.height * 0.15,
// child: Row(
// children: [
// // Master Exercise
// Expanded(
// flex: 65,
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.grey.shade200
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// children: [
// Expanded(
// flex: 60,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// 'Master Exercise',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.bold,
// ),
// ),
// SizedBox(height: 12),
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// border: Border.all(
// color: CustomColor.kAppBarColor),
// color: Colors.white),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 5, horizontal: 10),
// child: Text(
// 'Get Tricks',
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// color: CustomColor.kAppBarColor,
// fontSize: 12),
// ),
// ),
// ),
// ],
// ),
// ),
// Expanded(
// flex: 40,
// child: Image(
// image: AssetImage(ImgUrl.dog2Img),
// fit: BoxFit.fill,
// ),
// ),
// ],
// ),
// ),
// ),
// ),
//
// SizedBox(width: 10),
//
// // Clicked Sound
// Expanded(
// flex: 35,
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: CustomColor.kLightPinkColor
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// children: [
// Expanded(
// flex: 40,
// child: Image(
// image: AssetImage(ImgUrl.dog3Img),
// fit: BoxFit.fill,
// ),
// ),
//
// Expanded(
// flex: 60,
// child: Column(
// children: [
//
// Text(
// 'Clicker Sound',
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 18,
// ),
// ),
// SizedBox(height: Get.height * 0.005),
//
// Expanded(
// child: Image(
// image: AssetImage(ImgUrl.clicker),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(height: Get.height * 0.04),
//
// // know about animal
// Container(
// alignment: Alignment.center,
// child: Text(
// 'Know About Animal',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 20,
// ),
// ),
// ),
// SizedBox(height: Get.height * 0.015),
//
// //Gridview
// Container(
// height: Get.height * 0.16,
// child: GridView.builder(
// itemCount: dogImgLists.length,
// scrollDirection: Axis.horizontal,
// physics: BouncingScrollPhysics(),
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// crossAxisSpacing: 10,
// mainAxisSpacing: 10
// ),
// itemBuilder: (context, index){
// return Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: CustomColor.kAppBarColor
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Image(
// image: AssetImage('${dogImgLists[index]}'),
// ),
// ),
// );
// },
// ),
// ),
// ],
// ),
// ),
// )
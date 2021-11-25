import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/controller/library_screen_controller.dart';
import 'package:pet_care/models/library_screen_model.dart';

class LibraryScreen extends StatelessWidget {
  // LibraryScreen({Key? key}) : super(key: key);

  LibraryScreenController libraryScreenController =
      Get.put(LibraryScreenController());

  List<LibraryScreenModel> exerciseLists = [
    LibraryScreenModel(
      img: '${ImgUrl.exercise}',
      name: 'Exercises',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.games}',
      name: 'Games',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.good_manners}',
      name: 'Good Manners',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.articles}',
      name: 'Articles',
    ),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Library",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              libraryList(),
              SizedBox(
                height: 20,
              ),
              trainingProgramsText(),
              SizedBox(
                height: 10,
              ),
              trainingProgramList(),

              SizedBox(
                height: 20,
              ),
              exerciseText(),
              SizedBox(
                height: 10,
              ),
              exerciseList(),

              SizedBox(
                height: 20,
              ),
              articlesText(),
              SizedBox(
                height: 10,
              ),
              articlesList()
            ],
          ),
        ),
      ),
    );
  }

  libraryList() {
    return ListView.builder(
        itemCount: exerciseLists.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              //height: 40,
              margin: EdgeInsets.only(top: 10),
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          exerciseLists[index].img,
                          scale: 15,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                            child: Text(exerciseLists[index].name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ));
        });
  }

  trainingProgramsText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Training Programs",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 30,
          width: Get.width / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.kAppBarColor),
          child: Center(
            child: Text(
              "Show All",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  trainingProgramList() {
    return Row(
        children: [
          GestureDetector(
            onTap: (){
              /*libraryScreenController.trainingProgramIndex.value = libraryScreenController.trainingProgramIndex.value- 1;
              print('-- : ${libraryScreenController.trainingProgramIndex.value}');*/
              libraryScreenController.backwardAction();
            },
              child: Image.asset(ImgUrl.backward, scale: 20,),
          ),

          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: Get.height/5,
              margin: EdgeInsets.only(top: 10),
              child: PageView.builder(
                controller: libraryScreenController.trainingProgramspage,
                onPageChanged: libraryScreenController.selectedPageIndex,
                itemCount: libraryScreenController.trainingPrograms.length,
                itemBuilder: (context, index) {
                  return Container(

                    margin: EdgeInsets.only(right: 10),
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

                      child: Row(
                        children: [
                          Expanded(
                              flex:3,
                              child: Image.asset(libraryScreenController.trainingPrograms[index].img,)),
                          SizedBox(width: 20,),
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(libraryScreenController.trainingPrograms[index].name,
                                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),

                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Text("${libraryScreenController.trainingPrograms[index].skill}" + " New Skills",
                                      style: TextStyle(fontSize: 15),),
                                    SizedBox(width: 5,),
                                    Text("|"),
                                    SizedBox(width: 5,),
                                    Text("${libraryScreenController.trainingPrograms[index].week}" + " Weeks",
                                      style: TextStyle(fontSize: 15),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              /*child: CarouselSlider.builder(
                itemCount: libraryScreenController.trainingPrograms.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
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

                      child: Row(
                        children: [
                          Expanded(
                            flex:3,
                              child: Image.asset(libraryScreenController.trainingPrograms[libraryScreenController.trainingProgramIndex.value].img,)),
                          SizedBox(width: 20,),
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Text(libraryScreenController.trainingPrograms[libraryScreenController.trainingProgramIndex.value].name,
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),

                                  SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      Text("${libraryScreenController.trainingPrograms[libraryScreenController.trainingProgramIndex.value].skill}" + " New Skills",
                                        style: TextStyle(fontSize: 15),),
                                      SizedBox(width: 5,),
                                      Text("|"),
                                      SizedBox(width: 5,),
                                      Text("${libraryScreenController.trainingPrograms[libraryScreenController.trainingProgramIndex.value].week}" + " Weeks",
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    height: 150,
                    autoPlay: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      // setState(() {
                      libraryScreenController.activeIndex.value = index;
                      // activeIndex1 = int.parse('${bannerController.activeIndex}');
                      // });
                    }),
              ),*/
            ),
          ),

          SizedBox(width: 5,),

          GestureDetector(
              onTap: (){
                // if(libraryScreenController.trainingProgramIndex.value < libraryScreenController.trainingPrograms.length - 1){
                //   libraryScreenController.trainingProgramIndex.value = libraryScreenController.trainingProgramIndex.value +  1;
                //   print('++ : ${libraryScreenController.trainingProgramIndex.value}');
                // }
                libraryScreenController.forwardAction();
                },
              child: Image.asset(ImgUrl.forward, scale: 20,),
          ),
        ],
    );
  }

  exerciseText(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Exercises",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 30,
          width: Get.width / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.kAppBarColor),
          child: Center(
            child: Text(
              "Show All",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  exerciseList(){
    return Container(
      height: Get.height/7.5,
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              /*libraryScreenController.trainingProgramIndex.value = libraryScreenController.trainingProgramIndex.value- 1;
                print('-- : ${libraryScreenController.trainingProgramIndex.value}');*/
              libraryScreenController.exercisePage.previousPage(duration: 300.milliseconds, curve: Curves.ease);
            },
            child: Image.asset(ImgUrl.backward, scale: 20,),
          ),

          SizedBox(width: 5,),
          Expanded(
            child: Container(
              //height: Get.height,

              margin: EdgeInsets.only(top: 10),
              child: PageView.builder(
                padEnds: false,
                controller: libraryScreenController.exercisePage,
                onPageChanged: libraryScreenController.selectedPageIndex,
                itemCount: libraryScreenController.exerciseLists.length,
                itemBuilder: (context, index) {
                  return Container(

                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomColor.kAppBarColor,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: CustomColor.kTealColor),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex:4,
                              child: Image.asset(libraryScreenController.exerciseLists[index].img,)),
                          SizedBox(height: 10,),

                          Expanded(
                            flex: 1,
                            child: Text(libraryScreenController.exerciseLists[index].name,
                              style: TextStyle(color: Colors.black, fontSize: 15),),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(width: 5,),

          GestureDetector(
            onTap: (){
              // if(libraryScreenController.trainingProgramIndex.value < libraryScreenController.trainingPrograms.length - 1){
              //   libraryScreenController.trainingProgramIndex.value = libraryScreenController.trainingProgramIndex.value +  1;
              //   print('++ : ${libraryScreenController.trainingProgramIndex.value}');
              // }
              libraryScreenController.exercisePage.nextPage(duration: 300.milliseconds, curve: Curves.ease);
            },
            child: Image.asset(ImgUrl.forward, scale: 20,),
          ),
        ],
      ),
    );
  }

  articlesText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Articles",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 30,
          width: Get.width / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.kAppBarColor),
          child: Center(
            child: Text(
              "Show All",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  articlesList(){
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            /*libraryScreenController.trainingProgramIndex.value = libraryScreenController.trainingProgramIndex.value- 1;
              print('-- : ${libraryScreenController.trainingProgramIndex.value}');*/
            libraryScreenController.articlespage.previousPage(duration: 300.milliseconds, curve: Curves.ease);
          },
          child: Image.asset(ImgUrl.backward, scale: 20,),
        ),

        SizedBox(width: 5,),
        Expanded(
          child: Container(
            height: Get.height/7,
            margin: EdgeInsets.only(top: 10),
            child: PageView.builder(
              controller: libraryScreenController.articlespage,
              onPageChanged: libraryScreenController.selectedPageIndex,
              itemCount: libraryScreenController.trainingPrograms.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: Image.asset(libraryScreenController.articlesPrograms[index].img,height: 70 ,width: 70, fit: BoxFit.fill)
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(libraryScreenController.articlesPrograms[index].name,
                              style: TextStyle(fontSize: 16, color: Colors.black),
                              maxLines: 1,),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: Get.width / 6,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: CustomColor.kAppBarColor),
                                      child: Center(
                                        child: Text(
                                          "Trending",
                                          style:
                                          TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 30,
                                      width: Get.width / 6,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: CustomColor.kAppBarColor),
                                      child: Center(
                                        child: Text(
                                          "Walking",
                                          style:
                                          TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Text("${libraryScreenController.articlesPrograms[index].time}" + "min ago")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),

        SizedBox(width: 5,),

        GestureDetector(
          onTap: (){
            libraryScreenController.articlespage.nextPage(duration: 300.milliseconds, curve: Curves.ease);
          },
          child: Image.asset(ImgUrl.forward, scale: 20,),
        ),
      ],
    );
  }
}

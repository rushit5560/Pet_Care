import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/controller/articles_screen_controller.dart';
import 'package:pet_care/screens/articles_details_screen/articles_details_screen.dart';

class ArticlesScreen extends StatelessWidget {
  ArticlesScreen({Key? key}) : super(key: key);

  ArticlesScrenController articleScreenController = Get.put(ArticlesScrenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('Articles'),
              //SizedBox(height: 10,),

              articlesList()
            ],
          ),
        ),
      ),
    );
  }

  articlesList(){
    return GestureDetector(
      onTap: (){
        Get.to(() => ArticlesDetailsScreen());
      },
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: articleScreenController.articlesPrograms.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200),

              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(articleScreenController.articlesPrograms[index].img,height: 70 ,width: 70, fit: BoxFit.fill)
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(articleScreenController.articlesPrograms[index].name,
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

                            Text("${articleScreenController.articlesPrograms[index].time}" + "min ago")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

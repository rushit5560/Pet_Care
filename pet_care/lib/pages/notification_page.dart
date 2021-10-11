import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';

class NotificationPage extends StatelessWidget {
  // const NotificationPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(Get.height * 0.10),
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: AppBar(
      //       title: Text('Notification'),
      //     ),
      //   ),
      // ),


      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.kBottomBarColor
                ),

                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'NOTIFICATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 15,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [

                              Container(
                                height: Get.width * 0.2,
                                width: Get.width * 0.2,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColor.kBottomBarColor,
                                  // image: DecorationImage(
                                  //   image: AssetImage(ImgUrl.noti1Img)
                                  // ),
                                ),
                                child: Image(
                                  image: AssetImage(ImgUrl.noti1Img),
                                  // height: Get.width * 0.2,
                                  // width: Get.width * 0.2,
                                ),
                              ),

                              SizedBox(width: 10),

                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        'Become a Sitter',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                      ),

                                      Text(
                                        'Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter Become a Sitter',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

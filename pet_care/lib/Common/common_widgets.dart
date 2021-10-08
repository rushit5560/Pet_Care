import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'img_url.dart';

class CustomBackGroundImage extends StatelessWidget {
  const CustomBackGroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${ImgUrl.backGroundImg}'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.30,
      height: Get.width * 0.30,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${ImgUrl.logoImg}'),
          )
      ),
    );
  }
}

// class CustomDivider extends StatelessWidget {
//   // const CustomDivider({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Divider(
//       thickness: 1,
//     );
//   }
// }

class CustomSpacer extends StatelessWidget {

  final double height;
  final double width;
  const CustomSpacer({required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

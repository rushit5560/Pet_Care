import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/pages/index_page.dart';

import 'custom_color.dart';
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


class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            print('Skip Clicked');
            Get.offAll(()=> IndexPage());
          },
          child: Text(
            'SKIP',
            style: TextStyle(
                fontSize: 18,
              fontFamily: "Poppins"
            ),
          ),
        ),
      ],
    );
  }
}

// Input Decoration Use In Profile Page
InputDecoration textInputDecoration(hintText) {
  return InputDecoration(
    hintText: '$hintText',
    filled: true,
    fillColor: Colors.grey.shade200,
    isDense: true,
    counterText: '',
    contentPadding: EdgeInsets.all(15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey.shade200,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey.shade200,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey.shade200,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey.shade200,
      ),
    ),

  );
}

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({Key? key}) : super(key: key);

  String name;
  CustomAppBar(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomColor.kAppBarColor
        ),

        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            '$name',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              fontFamily: "Poppins",
            ),
          ),
        ),
      ),
    );
  }
}

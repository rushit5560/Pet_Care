import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/pages/pet_photo_upload_page.dart';


class PetGenderPage extends StatefulWidget {
  // const PetGenderPage({Key? key}) : super(key: key);

  @override
  _PetGenderPageState createState() => _PetGenderPageState();
}

class _PetGenderPageState extends State<PetGenderPage> {

  List<String> dropDownList = <String>['Select Gender', 'Male', 'Female'];
  String dropdownValue = 'Select Gender';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              //backGround Image
              CustomBackGroundImage(),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      SkipButton(),
                      CustomSpacer(height: Get.height * 0.02, width: 0),

                      // Screen Logo
                      CustomLogoImage(),

                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSpacer(height: Get.height * 0.04, width: 0),
                              petGenderText(),
                              CustomSpacer(height: Get.height * 0.10, width: 0),

                              petGenderSelectDropDown(),
                              CustomSpacer(height: Get.height * 0.05, width: 0),

                              nextButton(),
                              CustomSpacer(height: Get.height * 0.04, width: 0),
                            ],
                          ),
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
  }

  Widget petGenderText() {
    return Text(
      'What is Your Pet Gender?',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        // fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
        fontFamily: "Lilita One",
      ),
    );
  }

  Widget petGenderSelectDropDown() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey),
      style: const TextStyle(color: Colors.grey),
      underline: Container(
        height: 1,
        color: Colors.grey,
      ),
      onChanged: (String? newValue){
        setState(() {
          dropdownValue = newValue!;
          print(dropdownValue);
        });
      },
      items: dropDownList.map<DropdownMenuItem<String>>(
              (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
    );
  }

  Widget nextButton() {
    return GestureDetector(
      onTap: () {
        print('\ndropdownValue : $dropdownValue\n');
        if(dropdownValue.contains('Select Gender')){
          Get.snackbar('Please Select Your Pet Gender!', '');
        } else {
          Get.to(()=> PetPhotoUploadPage());
        }
      },
      child: Container(
        width: Get.width * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              'NEXT',
              style: TextStyle(
                color: CustomColor.kTabBarColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

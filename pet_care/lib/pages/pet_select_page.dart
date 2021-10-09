import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/pages/pet_name_page.dart';

class PetSelectPage extends StatefulWidget {
  // const SelectPetPage({Key? key}) : super(key: key);

  @override
  _PetSelectPageState createState() => _PetSelectPageState();
}

class _PetSelectPageState extends State<PetSelectPage> {

  List<String> dropDownList = <String>['Dog', 'Cat', 'Mouse', 'Parrot', 'Hamsters', 'Guinea Pigs', 'Rabbits', 'Turtle'];
  String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // CustomSpacer(height: Get.height * 0.10, width: 0),

                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomSpacer(height: Get.height * 0.04, width: 0),
                            petTypeText(),
                            CustomSpacer(height: Get.height * 0.10, width: 0),

                            petSelectDropDown(),
                            CustomSpacer(height: Get.height * 0.05, width: 0),

                            nextButton(),
                            CustomSpacer(height: Get.height * 0.04, width: 0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget petTypeText() {
    return Text(
      'What Type Of Pet You Have?',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
      ),
    );
  }

  Widget petSelectDropDown() {
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
        Get.to(()=> PetNamePage());
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
                color: CustomColor.kTealColor,
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

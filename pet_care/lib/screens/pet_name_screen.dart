import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/screens/pet_gender_screen.dart';

class PetNameScreen extends StatelessWidget {
  // const PetNamePage({Key? key}) : super(key: key);

  TextEditingController petNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

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
                              petNameText(),
                              CustomSpacer(height: Get.height * 0.10, width: 0),

                              petNameField(),
                              CustomSpacer(height: Get.height * 0.05, width: 0),

                              nextButton(),
                              CustomSpacer(height: Get.height * 0.05, width: 0),
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

  Widget petNameText() {
    return Text(
      'What You Call Your Pet?',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        // fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
        fontFamily: "Lilita One",
      ),
    );
  }

  Widget petNameField() {
    return Form(
      key: formKey,
      child: TextFormField(
        controller: petNameController,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        cursorColor: Colors.grey,
        validator: (value){
          if(value!.isEmpty){
            return 'Please Enter Your Pet Name';
          }
        },
        decoration: InputDecoration(
          hintText: 'Enter Your Pet Name',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    return GestureDetector(
      onTap: () {
        if(formKey.currentState!.validate()){
          print('Pet Name : ${petNameController.text.trim()}');
          Get.to(()=> PetGenderScreen());
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

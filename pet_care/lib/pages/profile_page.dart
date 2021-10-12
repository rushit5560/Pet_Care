import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';

class ProfilePage extends StatelessWidget {
  // const ProfilePage({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController petTypeController = TextEditingController();
  TextEditingController petNameController = TextEditingController();
  TextEditingController petGenderController = TextEditingController();
  TextEditingController petEmailController = TextEditingController();
  TextEditingController petPhoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              customAppBar(),
              Expanded(
                  child: petDetails(),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget customAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: CustomColor.kAppBarColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

          ],
        ),
      ),
    );
  }

  Widget petDetails() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
        child: Form(
          key: formKey,
          child: Column(
            children: [

              SizedBox(height: Get.height * 0.02),
              // Profile Picture
              Container(
                height: Get.width * 0.40,
                width: Get.width * 0.40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.kAppBarColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Image(
                      height: Get.width * 0.20,
                      width: Get.width * 0.20,
                      image: AssetImage(ImgUrl.profileImg),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),

              TextFormField(
                controller: petTypeController,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Pet Type Can\'t be Empty';
                  }
                },
                decoration: textInputDecoration('Pet Type'),
              ),
              SizedBox(height: Get.height * 0.020),

              TextFormField(
                controller: petNameController,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Pet Name Can\'t be Empty';
                  }
                },
                decoration: textInputDecoration('Pet Name'),
              ),
              SizedBox(height: Get.height * 0.020),

              TextFormField(
                controller: petGenderController,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Pet Gender Can\'t be Empty';
                  }
                },
                decoration: textInputDecoration('Gender'),
              ),
              SizedBox(height: Get.height * 0.020),

              TextFormField(
                controller: petEmailController,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Email Can\'t be Empty';
                  }
                  if(!value.contains('@')){
                    return 'Enter Valid Email Id!';
                  }
                },
                decoration: textInputDecoration('Email'),
              ),
              SizedBox(height: Get.height * 0.020),

              TextFormField(
                controller: petPhoneNoController,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,
                maxLength: 10,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Phone Number Can\'t be Empty';
                  }
                  if(value.length != 10){
                    return 'Enter Valid Phone No.';
                  }
                },
                decoration: textInputDecoration('Phone Number'),
              ),
              SizedBox(height: Get.height * 0.020),

              GestureDetector(
                onTap: () {
                  if(formKey.currentState!.validate()){
                    print('ASAsas');
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: CustomColor.kAppBarColor,
                  ),
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


}

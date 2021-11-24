import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailPhoneController = TextEditingController();

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

              SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSpacer(height: Get.height * 0.05, width: 0),
                        // Screen Logo
                        CustomLogoImage(),
                        CustomSpacer(height: Get.height * 0.15, width: 0),

                        recoverPasswordText(),
                        CustomSpacer(height: Get.height * 0.04, width: 0),

                        emailField(),
                        CustomSpacer(height: Get.height * 0.020, width: 0),


                        sendOtpButton(),
                        CustomSpacer(height: Get.height * 0.04, width: 0),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget recoverPasswordText() {
    return Text(
      'Recover Your Password',
      style: TextStyle(
        // fontWeight: FontWeight.bold,
          fontSize: Get.width * 0.06,
          fontFamily: "Lilita One"
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: emailPhoneController,
        cursorColor: Colors.grey,
        keyboardType: TextInputType.emailAddress,
        validator: (value){
          if(value!.isEmpty){
            return 'Field can\'t be Empty.';
          }
        },
        decoration: InputDecoration(
          hintText: 'Email / Phone Number',
          isDense: true,
          contentPadding: EdgeInsets.all(10),
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

  Widget sendOtpButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          GestureDetector(
            onTap: () {
            },
            child: Container(
              //alignment: Alignment.topRight,
              width: Get.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Center(
                  child: Text(
                    'SEND OTP',
                    style: TextStyle(
                      color: CustomColor.kTabBarColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/controller/login_page_controller.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  LoginPageController loginPageController = Get.put(LoginPageController());

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomSpacer(height: Get.height * 0.05, width: 0),
                      // Screen Logo
                      CustomLogoImage(),
                      CustomSpacer(height: Get.height * 0.06, width: 0),

                      loginText(),
                      CustomSpacer(height: Get.height * 0.05, width: 0),

                      emailField(),
                      CustomSpacer(height: Get.height * 0.015, width: 0),

                      passwordField(),
                      CustomSpacer(height: Get.height * 0.015, width: 0),

                      forgotPassword(),
                      CustomSpacer(height: Get.height * 0.06, width: 0),

                      loginButton(),
                      CustomSpacer(height: Get.height * 0.04, width: 0),

                      signUpText(),
                      CustomSpacer(height: Get.height * 0.01, width: 0),
                      signUpWithText(),
                      CustomSpacer(height: Get.height * 0.015, width: 0),

                      googleButton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginText() {
    return Text(
      'Login Your Account',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width * 0.06),
    );
  }

  Widget emailField() {
    return TextFormField(
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
    );
  }

  Widget passwordField() {
    return Obx(
      ()=> TextFormField(
        controller: passwordController,
        cursorColor: Colors.grey,
        keyboardType: TextInputType.text,
        obscureText: loginPageController.isVisible.value,
        validator: (value){
          if(value!.isEmpty){
            return 'Field can\'t be Empty.';
          }
          if(value.length<6){
            return 'Password More then 6 Character';
          }
        },
        decoration: InputDecoration(
          hintText: 'Password',
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
          suffix: GestureDetector(
            onTap: () {
              loginPageController.isVisible.value
              = !loginPageController.isVisible.value;
              print('isVisible :: ${loginPageController.isVisible.value}');
            },
            child: Icon(
              loginPageController.isVisible.value
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget forgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            print('Forget Password');
          },
          child: Text(
            'Forget Password?',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),
          ),
        )
      ],
    );
  }

  Widget loginButton() {
    return GestureDetector(
      onTap: () {
        print('Login');
      },
      child: Container(
        width: Get.width * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Color(0xff9cf1de),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpText() {
    return GestureDetector(
      onTap: () {
        print('New Account');
      },
      child: Text(
        'Create New Account',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget signUpWithText() {
    return Text(
      'Or Sign Up With',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

  Widget googleButton() {
    return GestureDetector(
      onTap: () {
        print('Google');
      },
      child: Container(
        width: Get.width * 0.10,
        height: Get.width * 0.10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/controller/signin_page_controller.dart';
import 'package:pet_care/pages/signup_page.dart';

class SignInPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  SignInPageController signInPageController = Get.put(SignInPageController());

  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                      // mainAxisSize: MainAxisSize.max,
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
                        CustomSpacer(height: Get.height * 0.01, width: 0),
                      ],
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

  Widget loginText() {
    return Text(
      'Login Your Account',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width * 0.06),
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

  Widget passwordField() {
    return Obx(
      ()=> Container(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            controller: passwordController,
            cursorColor: Colors.grey,
            keyboardType: TextInputType.text,
            obscureText: signInPageController.isObsecure.value,
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
              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
              suffixIcon: GestureDetector(
                onTap: () {
                  signInPageController.isObsecure.value =
                                      !signInPageController.isObsecure.value;
                  print('${signInPageController.isObsecure.value}');
                  },
                child: Container(
                  child: signInPageController.isObsecure.value
                      ? Icon(Icons.visibility_off_rounded,color: Colors.grey)
                      : Icon(Icons.visibility_rounded,color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
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
      ),
    );
  }

  Widget loginButton() {
    return GestureDetector(
      onTap: () {
        print('Login');
        print('${emailPhoneController.text.trim()}');
        print('${passwordController.text.trim()}');
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
              'LOGIN',
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

  Widget signUpText() {
    return GestureDetector(
      onTap: () {
        print('New Account');
        Get.to(()=> SignUpPage());
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/controller/signup_page_controller.dart';
import 'package:pet_care/pages/signin_page.dart';

class SignUpPage extends StatelessWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  SignUpPageController signUpPageController = Get.put(SignUpPageController());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
                        CustomSpacer(height: Get.height * 0.12, width: 0),

                        createAccountText(),
                        CustomSpacer(height: Get.height * 0.04, width: 0),

                        emailField(),
                        CustomSpacer(height: Get.height * 0.015, width: 0),

                        passwordField(),
                        CustomSpacer(height: Get.height * 0.015, width: 0),

                        phoneNumberField(),
                        CustomSpacer(height: Get.height * 0.05, width: 0),

                        signUpButton(),
                        CustomSpacer(height: Get.height * 0.04, width: 0),

                        haveAccountText(),
                        CustomSpacer(height: Get.height * 0.01, width: 0),
                        signUpWithText(),
                        CustomSpacer(height: Get.height * 0.015, width: 0),

                        googleButton(),
                        CustomSpacer(height: Get.height * 0.01, width: 0),
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

  Widget createAccountText() {
    return Text(
      'Create Your Account',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width * 0.06),
    );
  }

  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: emailController,
        cursorColor: Colors.grey,
        keyboardType: TextInputType.emailAddress,
        validator: (value){
          if(value!.isEmpty){
            return 'Field can\'t be Empty.';
          }
          if(!value.contains('@')){
            return 'Enter Valid EmailId.';
          }
        },
        decoration: InputDecoration(
          hintText: 'Email',
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
            obscureText: signUpPageController.isObsecure.value,
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
                  signUpPageController.isObsecure.value =
                  !signUpPageController.isObsecure.value;
                  print('${signUpPageController.isObsecure.value}');
                },
                child: Container(
                  child: signUpPageController.isObsecure.value
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

  Widget phoneNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: phoneNumberController,
        cursorColor: Colors.grey,
        keyboardType: TextInputType.number,
        maxLength: 10,
        validator: (value){
          if(value!.isEmpty){
            return 'Field can\'t be Empty.';
          }
          if(value.length != 10){
            return 'Enter Valid Phone No.';
          }
        },
        decoration: InputDecoration(
          hintText: 'Phone Number',
          counterText: '',
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

  Widget signUpButton() {
    return GestureDetector(
      onTap: () {
        print('SignUp');
        print('${emailController.text.trim()}');
        print('${passwordController.text.trim()}');
        print('${phoneNumberController.text.trim()}');
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
              'SIGN UP',
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

  Widget haveAccountText() {
    return GestureDetector(
      onTap: () {
        print('Have Account');
        Get.to(()=> SignInPage());
      },
      child: Text(
        'Already Have An Account?',
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

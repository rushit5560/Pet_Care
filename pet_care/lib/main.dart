import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/screens/exercise_screen/exercise_screen.dart';
import 'package:pet_care/screens/library_screen/library_screen.dart';
import 'package:pet_care/screens/pet_select_screen/pet_select_screen.dart';
import 'package:pet_care/screens/signin_screen/signin_screen.dart';
import 'package:pet_care/screens/training_plan_screen/training_plan_screen.dart';
import 'Common/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pet Care & training',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),

      home: LibraryScreen(),
    );
  }
}

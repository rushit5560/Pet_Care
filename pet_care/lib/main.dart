import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/pages/training_plan_page.dart';
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

      home: TrainingPlanPage(),
    );
  }
}

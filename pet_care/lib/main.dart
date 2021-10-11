import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/ZZZZZZZZZZZ.dart';
import 'package:pet_care/pages/pet_select_page.dart';
import 'package:pet_care/pages/profile_page.dart';
import 'package:pet_care/pages/signin_page.dart';
import 'Common/app_theme.dart';
import 'pages/index_page.dart';

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

      home: PetSelectPage(),
    );
  }
}

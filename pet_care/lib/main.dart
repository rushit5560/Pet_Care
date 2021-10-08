import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/login_page.dart';

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
      home: LoginPage(),
    );
  }
}

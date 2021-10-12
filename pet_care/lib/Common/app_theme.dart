import 'package:flutter/material.dart';

import 'custom_color.dart';

ThemeData appTheme() {
  return ThemeData.light().copyWith(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomColor.kAppBarColor,
        selectedLabelStyle: TextStyle(fontSize: 0.0),
        unselectedLabelStyle: TextStyle(fontSize: 0.0),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
  );
}
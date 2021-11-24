import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/screens/first_screen/first_screen.dart';
import 'package:pet_care/screens/home_screen/home_screen.dart';
import 'package:pet_care/screens/second_screen/second_screen.dart';
import 'package:pet_care/screens/setting_screen/setting_screen.dart';


class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;
  final tabs = [HomeScreen(), FirstScreen(), SecondScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 2),
        child: Container(
          height: Get.height * 0.08,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: CustomColor.kAppBarColor
            // color: Colors.black,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                print(_currentIndex);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(ImgUrl.bottomIcon1Img),
                  height: 40, width: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(ImgUrl.bottomIcon2Img),
                  height: 40, width: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(ImgUrl.bottomIcon3Img),
                  height: 40, width: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(ImgUrl.bottomIcon4Img),
                  height: 40, width: 40,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

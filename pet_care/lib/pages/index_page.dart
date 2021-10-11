import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/pages/first_page.dart';
import 'package:pet_care/pages/home_page.dart';
import 'package:pet_care/pages/second_page.dart';
import 'package:pet_care/pages/setting_page.dart';


class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  final tabs = [HomePage(), FirstPage(), SecondPage(), SettingPage()];

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
            color: CustomColor.kBottomBarColor
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/pages/pet_train_reminder_page.dart';

class PetPhotoUploadPage extends StatefulWidget {
  // const PetPhotoUploadPage({Key? key}) : super(key: key);

  @override
  _PetPhotoUploadPageState createState() => _PetPhotoUploadPageState();
}

class _PetPhotoUploadPageState extends State<PetPhotoUploadPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            //backGround Image
            CustomBackGroundImage(),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    SkipButton(),
                    CustomSpacer(height: Get.height * 0.02, width: 0),

                    // Screen Logo
                    CustomLogoImage(),

                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomSpacer(height: Get.height * 0.04, width: 0),
                            petUploadPhotoText(),
                            CustomSpacer(height: Get.height * 0.10, width: 0),

                            petPhotoUpload(),
                            CustomSpacer(height: Get.height * 0.05, width: 0),

                            nextButton(),
                            CustomSpacer(height: Get.height * 0.04, width: 0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget petUploadPhotoText() {
    return Text(
      'Upload A Photo of Your Pet',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
      ),
    );
  }

  Widget petPhotoUpload() {
    return Stack(
      children: [

        /*_image != null
            ? Container(
          width: Get.width * 0.33,
          height: Get.width * 0.33,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: FileImage(_image),
              fit: BoxFit.cover,
            )
          ),
        )
        : */Container(
          width: Get.width * 0.33,
          height: Get.width * 0.33,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ImgUrl.logoImg),
                fit: BoxFit.cover,
              )
          ),
        ),

        Positioned(
          bottom: 8,
          right: 0,
          child: GestureDetector(
            onTap: (){
              print('Camera');
              _showPicker(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade400
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.photo_camera_rounded,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () {
                        // gallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      // camera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }


  Widget nextButton() {
    return GestureDetector(
      onTap: () {
        Get.to(()=> PetTrainReminderPage());
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
              'NEXT',
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
}

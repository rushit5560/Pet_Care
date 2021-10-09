import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';

class PetTrainReminderPage extends StatefulWidget {
  const PetTrainReminderPage({Key? key}) : super(key: key);

  @override
  _PetTrainReminderPageState createState() => _PetTrainReminderPageState();
}

class _PetTrainReminderPageState extends State<PetTrainReminderPage> {

  TimeOfDay time = TimeOfDay.now();
  TimeOfDay? picked/* = TimeOfDay.now()*/;


  // @override
  // void initState() {
  //   picked = TimeOfDay.now();
  //   super.initState();
  // }

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
                            petTrainReminderText(),
                            CustomSpacer(height: Get.height * 0.09, width: 0),

                            setTimeForTraining(context),
                            CustomSpacer(height: Get.height * 0.04, width: 0),

                            weekText(),
                            CustomSpacer(height: Get.height * 0.02, width: 0),


                            daysOfWeek(),
                            CustomSpacer(height: Get.height * 0.02, width: 0),

                            saveButton(),
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

  Widget petTrainReminderText() {
    return Text(
      'Set Reminder To Train Your Pet',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
      ),
    );
  }

  Widget setTimeForTraining(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Container(
            child: Column(
              children: [

                IntrinsicHeight(
                  child: GestureDetector(
                    onTap: () {
                      selectTime(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: CustomColor.kTealColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  // time.minute.isEven.toString().isEmpty
                                  //   ? "${TimeOfDay.now().hour}"
                                  //   : "${time.hour}",
                                  "${time.hour}".isEmpty ? "00" : "${time.hour}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.grey,
                              indent: 3,
                              endIndent: 3,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  // time.minute.isEven.toString().isEmpty
                                  //   ? "${TimeOfDay.now().minute}"
                                  //   : "${time.minute}",
                                  "${time.minute}".isEmpty ? "00" : "${time.minute}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                                indent: 3,
                                endIndent: 3,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  '00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                            child: Text('Hour'),
                        ),
                      ),
                      Expanded(
                        child: Center(child: Text('Minutes')),
                      ),
                      Expanded(
                        child: Center(child: Text('Second')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget weekText() {
    return Text(
      'Days Of The Week',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget daysOfWeek() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Sunday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                    child: Text(
                        'S',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                ),
              ),
            ),
          ),
          // Monday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'M',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Tuesday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Wednesday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'W',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Thursday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Friday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'F',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Saturday
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Extra-----------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white,width: 2),
                  color: Colors.white
                ),
                child: Center(
                  child: Icon(
                    Icons.check_rounded,
                    color: CustomColor.kTealColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget saveButton() {
    return GestureDetector(
      onTap: () {
        // Get.to(()=> PetTrainReminderPage());
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
              'SAVE',
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



  Future selectTime(BuildContext context) async {
    time = TimeOfDay.now();
    picked = (await showTimePicker(context: context, initialTime: TimeOfDay.now()))!;

    if(time != null) {
      setState(() {
        time = picked!;
      });
    }
  }
}

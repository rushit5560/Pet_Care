import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/models/week_reminder_model.dart';

class PetTrainReminderPage extends StatefulWidget {
  const PetTrainReminderPage({Key? key}) : super(key: key);

  @override
  _PetTrainReminderPageState createState() => _PetTrainReminderPageState();
}

class _PetTrainReminderPageState extends State<PetTrainReminderPage> {
  TimeOfDay time = TimeOfDay.now();
  TimeOfDay? picked

      /* = TimeOfDay.now()*/;

  List<WeekReminderModel> weekReminderLists = [
    WeekReminderModel(name: 'S', isSelected: false),
    WeekReminderModel(name: 'M', isSelected: false),
    WeekReminderModel(name: 'T', isSelected: false),
    WeekReminderModel(name: 'W', isSelected: false),
    WeekReminderModel(name: 'T', isSelected: false),
    WeekReminderModel(name: 'F', isSelected: false),
    WeekReminderModel(name: 'S', isSelected: false),
  ];

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
            //backGround Image - Import From Common Widget File
            CustomBackGroundImage(),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    // Import From Common Widget File
                    SkipButton(),
                    CustomSpacer(height: Get.height * 0.02, width: 0),

                    // Screen Logo - Import From Common Widget File
                    CustomLogoImage(),

                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSpacer(height: Get.height * 0.15, width: 0),
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
        // fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.06,
        fontFamily: "Lilita One",
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
                                  "${time.hour}".isEmpty
                                      ? "00"
                                      : "${time.hour}",
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
                                  "${time.minute}".isEmpty
                                      ? "00"
                                      : "${time.minute}",
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
                          child: Text(
                            'Hour',
                            style: TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Minutes',
                            style: TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Second',
                            style: TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
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
        fontFamily: "Poppins",
      ),
    );
  }

  Widget daysOfWeek() {
    return Container(
      height: 30,
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: weekReminderLists.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: GestureDetector(
                onTap: () {
                  print('${weekReminderLists[index].name}');
                  setState(() {
                    weekReminderLists[index].isSelected =
                    !weekReminderLists[index].isSelected;
                  });
                },
                child: weekReminderLists[index].isSelected
                    ? Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check_rounded,
                            color: CustomColor.kTabBarColor,
                          ),
                        ),
                      )
                    : Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            '${weekReminderLists[index].name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  /*Widget daysOfWeek() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: Get.width * 0.10,
        child: ListView.builder(
          itemCount: weekReminderLists.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Expanded(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Center(
                    child: Text(
                      '${weekReminderLists[index].name}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }*/

  Widget saveButton() {
    return GestureDetector(
      onTap: () {
        // Get.to(()=> PetTrainReminderPage());
        print('Time :: $time');
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

  Future selectTime(BuildContext context) async {
    // time = TimeOfDay.now();
    picked = (await showTimePicker(context: context, initialTime: time))!;

    if (time != TimeOfDay.now()) {
      setState(() {
        time = picked!;
      });
    } else {}
  }
}

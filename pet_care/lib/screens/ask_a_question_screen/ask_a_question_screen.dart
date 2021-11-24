import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/custom_color.dart';
import 'package:pet_care/models/ask_a_question_model.dart';


class AskAQuestionScreen extends StatelessWidget {
  // const AskAQuestionPage({Key? key}) : super(key: key);

  List<AskAQuestionModel> questionsLists = [
    AskAQuestionModel(
      question: 'Does Your Pet Eat Regularly?',
      option1: 'YES',
      option2: 'NO'
    ),
    AskAQuestionModel(
        question: 'Does Your Pet Sleep Soundly?',
        option1: 'YES',
        option2: 'NO'
    ),
    AskAQuestionModel(
        question: 'Does Your Pet Eat Regularly?',
        option1: 'YES',
        option2: 'NO'
    ),
    AskAQuestionModel(
        question: 'Does Your Pet Sleep Soundly?',
        option1: 'YES',
        option2: 'NO'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            // Import From Common Widget File
            CustomAppBar('ASK A QUESTION'),

            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: questionsLists.length,
                  // shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColor.kAppBarColor,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: CustomColor.kTealColor
                          ),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                // Question Text
                                Text(
                                  '${index+1}. ${questionsLists[index].question}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: Get.height * 0.025),

                                // Yes Answer Module
                                GestureDetector(
                                  onTap: () {
                                    print('Clk :: ${questionsLists[index].option1}');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: CustomColor.kButtonColor,
                                    ),
                                    child: Text(
                                      '${questionsLists[index].option1}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.height * 0.015),

                                // No Answer Module
                                GestureDetector(
                                  onTap: () {
                                    print('Clk :: ${questionsLists[index].option2}');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: CustomColor.kButtonColor,
                                    ),
                                    child: Text(
                                      '${questionsLists[index].option2}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

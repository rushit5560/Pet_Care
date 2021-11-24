import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  List<String> accountList = [
    "Login",
    "Manage Subscription",
    "Restore Purchases",
    "Redeem Code",
    "Change Language",
    "Training Reminders",
    "Reminder Time",
    "FAQ",
    "Invite Friends"
  ];

  List<String> connectList = [
    "Contact Us",
    "Rate Us",
    "Facebook",
    "Instagram",
    "Youtube",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Settings", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              manageAccountText(),
              manageAccountList(),
              SizedBox(height: 15,),
              connectWithUsText(),
              connectWithList(),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }

  manageAccountText(){
    return Container(
      child: Text("Manage Your Account",
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  manageAccountList(){
    return ListView.builder(
      itemCount: accountList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(
            //height: 40,
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 10),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200
            ),
            child: index == 6 ?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(accountList[index],
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                Text("10:23", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500))
              ],
            )
             :
            Text(accountList[index],
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),)
            //child: Text("Login", style: TextStyle(color: Colors.black),),
          );
        });
  }

  connectWithUsText(){
    return Container(
      child: Text("Connect With Us",
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  connectWithList(){
    return ListView.builder(
        itemCount: connectList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(
            //height: 40,
              padding: EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 10),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200
              ),
              child: Text(connectList[index],
                style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),)
            //child: Text("Login", style: TextStyle(color: Colors.black),),
          );
        });
  }
}

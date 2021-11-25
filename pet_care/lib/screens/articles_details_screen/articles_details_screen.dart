import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/Common/common_widgets.dart';
import 'package:pet_care/Common/img_url.dart';

class ArticlesDetailsScreen extends StatelessWidget {
  const ArticlesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar('Articles'),
              SizedBox(height: 10,),
              articlesFilter(),
              SizedBox(height: 25,),
              articleHeading(),
              SizedBox(height: 25,),
              articleAnswer()
            ],
          ),
        ),
      ),
    );
  }

  articlesFilter(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(80.0),
        child: Image.asset(ImgUrl.articles1, height: 150 ,width: 150, fit: BoxFit.fill)
    );
  }

  articleHeading(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting?",
        style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
    );
  }


  articleAnswer(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        style: TextStyle(color: Colors.black, fontSize: 17),),
    );
  }
}

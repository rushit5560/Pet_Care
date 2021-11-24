import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/models/library_screen_model.dart';

class LibraryScreenController extends GetxController {
  var trainingProgramspage = PageController();
  var exercisePage = PageController(initialPage: 0,viewportFraction: 0.34);
  var articlespage = PageController();
  var selectedPageIndex = 0.obs;

  /*@override
  void onInit() {
    super.onInit();
    exercisePage = new PageController(initialPage: 0,viewportFraction: 0.8,);
  }*/

  forwardAction() {
    trainingProgramspage.nextPage(
        duration: 300.milliseconds, curve: Curves.ease);
  }

  backwardAction() {
    trainingProgramspage.previousPage(
        duration: 300.milliseconds, curve: Curves.ease);
  }

  RxList<LibraryScreenModel> trainingPrograms = [
    LibraryScreenModel(
        img: '${ImgUrl.training}',
        name: 'Basic Training',
        skill: '30',
        week: '4'),
    LibraryScreenModel(
        img: '${ImgUrl.training}', name: 'Games', skill: '30', week: '4'),
    LibraryScreenModel(
        img: '${ImgUrl.training}',
        name: 'Basic Training1',
        skill: '30',
        week: '4'),
    LibraryScreenModel(
        img: '${ImgUrl.training}', name: 'Games1', skill: '30', week: '4'),
  ].obs;

  RxList<LibraryScreenModel> articlesPrograms = [
    LibraryScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    LibraryScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    LibraryScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    LibraryScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
  ].obs;

  List<LibraryScreenModel> exerciseLists = [
    LibraryScreenModel(
      img: '${ImgUrl.exercise1}',
      name: 'Handshake',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.exercise2}',
      name: 'Agility Walk',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.exercise3}',
      name: 'Jump',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.exercise4}',
      name: 'Play Ball',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.exercise5}',
      name: 'Sit',
    ),
    LibraryScreenModel(
      img: '${ImgUrl.exercise6}',
      name: 'Agility Fun Run',
    ),
  ];
}

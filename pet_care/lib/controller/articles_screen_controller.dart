import 'package:get/get.dart';
import 'package:pet_care/Common/img_url.dart';
import 'package:pet_care/models/articles_screen_model.dart';

class ArticlesScrenController extends GetxController{
  RxList<ArticlesScreenModel> articlesPrograms = [
    ArticlesScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    ArticlesScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    ArticlesScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
    ArticlesScreenModel(
        img: '${ImgUrl.articles1}',
        name: 'Lorem Ipsum is simply dummy text?',
        time: '2'),
  ].obs;
}
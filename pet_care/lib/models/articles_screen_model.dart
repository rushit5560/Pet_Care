class ArticlesScreenModel {
  String img;
  String name;
  String ? skill;
  String ? week;
  String ? time;

  ArticlesScreenModel({
    required this.img,
    required this.name,
    this.skill,
    this.week,
    this.time
  });
}
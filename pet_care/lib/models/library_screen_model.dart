class LibraryScreenModel {
  String img;
  String name;
  String ? skill;
  String ? week;
  String ? time;

  LibraryScreenModel({
    required this.img,
    required this.name,
    this.skill,
     this.week,
    this.time
  });
}
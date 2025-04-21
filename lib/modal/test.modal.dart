import 'dart:convert';

class Test {
  String? id;
  String? catName;
  String? description;
  String? catImage;

  Test({this.id, this.catName, this.description, this.catImage});

  Test.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    catName = json["cat_name"];
    description = json["description"];
    catImage = json["cat_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["cat_name"] = catName;
    _data["description"] = description;
    _data["cat_image"] = catImage;
    return _data;
  }

  static List<Test> fromjsonlist(List testList) {
    return testList.map((e) => Test.fromJson(e)).toList();
  }
}

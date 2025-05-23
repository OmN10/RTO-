class Beginner {
  String? id;
  String? level;
  String? name;
  String? description;

  Beginner({this.id, this.level, this.name, this.description});

  Beginner.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    level = json["level"];
    name = json["name"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["level"] = level;
    _data["name"] = name;
    _data["description"] = description;
    return _data;
  }

  static List<Beginner> fromjsonlist(List beginnerList) {
    return beginnerList.map((e) => Beginner.fromJson(e)).toList();
  }
}

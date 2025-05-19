
class Parking {
    String? id;
    String? level;
    String? name;
    String? description;

    Parking({this.id, this.level, this.name, this.description});

    Parking.fromJson(Map<String, dynamic> json) {
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
    static List<Parking> fromjsonlist(List parkingList) {
    return parkingList.map((e) => Parking.fromJson(e)).toList();
  }

}
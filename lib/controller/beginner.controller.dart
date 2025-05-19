import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rto_projects/modal/drivingbeginnermodal.dart';
import 'package:http/http.dart' as http;
import 'package:rto_projects/modal/parking.modal.dart';

class Beginnercontroller extends ChangeNotifier {
  List<Beginner>? _beginnerList = [];
  List<Beginner>? get beginnerr => _beginnerList;

  void fetchData() async {
    try {
      var resp = await http.get(
        Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/post_list?cat_id=1&level=beginner",
        ),
      );

      if (resp.statusCode == 200) {
        _beginnerList = Beginner.fromjsonlist(jsonDecode(resp.body));
        notifyListeners();
      }
    } catch (e) {}
  }

  List<Parking>? _parkingList = [];
  List<Parking>? get parking => _parkingList;

  void fetchparking() async {
    try {
      var res = await http.get(
        Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/post_list?cat_id=2&level=beginner",
        ),
      );

      if (res.statusCode == 200) {
        _parkingList = Parking.fromjsonlist(jsonDecode(res.body));
        notifyListeners();
      }
    } catch (e) {}
  }
}

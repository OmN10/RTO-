import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rto_projects/modal/singletest.modal.dart';
import 'package:rto_projects/modal/test.modal.dart';

class Testcontroller extends ChangeNotifier {
  List<Test> _test = [];

  List<Test> get test => _test;

  void fetchtest() async {
    try {
      var resp = await http.get(
        Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/test_category_list",
        ),
      );
      if (resp.statusCode == 200) {
        _test = Test.fromjsonlist(jsonDecode(resp.body));
      }
    } catch (e) {}
  }

  List<TestData>? _singletestData;
  List<TestData>? get singletestData => _singletestData;

  void fetctsingletest(String id) async {
    _singletestData = null;
    try {
      var response = await http.get(
        Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/test_data?cat_id=1,2,3,4,5",
        ),
      );

      if (response.statusCode == 200) {
        _singletestData = TestData.fromjsonlist(jsonDecode(response.body));


        notifyListeners();
      }
    } catch (e) {
      //
    }
  }
}

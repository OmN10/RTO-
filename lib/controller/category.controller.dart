import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rto_projects/modal/category.modal.dart';
import 'package:http/http.dart' as http;

class Categorycontroller extends ChangeNotifier {
  List<Category>? _categoryList = [];
  List<Category>? get CategoryList => _categoryList;

  void fetchCategoryList() async {
    try {
      var resp = await http.get(
        Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/category_list",
        ),
      );

      if (resp.statusCode == 200) {
        _categoryList = Category.fromjsonlist(jsonDecode(resp.body));
        notifyListeners();
      }
    } catch (e) {}
  }
}

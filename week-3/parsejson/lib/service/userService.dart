import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:parsejson/model/usermodel.dart';

class UserService {
  static Future<String> _loadData() async {
    return await rootBundle.loadString('assets/person.json');
  }

  static Future<User> getUser() async {
    var jsonRaw = await _loadData();
    var userRaw = jsonDecode(jsonRaw);
    User user = User.fromJson(userRaw);

    print(user);
    return user;
  }
}

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:parsejson/model/photo.model.dart';

class PhotoService {
  static Future<String> _loadData() async {
    return await rootBundle.loadString("assets/photo.json");
  }

  static Future<PhotoList> getPhoto() async {
    var rawPhoto = await _loadData();
    var jsonPhoto = jsonDecode(rawPhoto);
    PhotoList photoList = PhotoList.fromJson(jsonPhoto);
    photoList.photoList.forEach((element) {
      print(element.albumId);
    });
    return photoList;
  }
}

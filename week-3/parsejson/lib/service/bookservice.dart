import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:parsejson/model/book.model.dart';

class BookService {
  static Future<String> _loadData() async {
    return await rootBundle.loadString('assets/book.json');
  }

  static Future<Book> getBook() async {
    var rawData = await _loadData();
    var parsedJson = jsonDecode(rawData);

    Book book = Book.fromJson(parsedJson);

    return book;
  }
}

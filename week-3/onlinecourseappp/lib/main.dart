import 'package:flutter/material.dart';
import 'package:onlinecourseappp/pages/homepage.dart';
import 'package:onlinecourseappp/service/courseService.dart';

void main() {
  runApp(MyApp());
  CourseService.getCourses()
      .then((value) => print(value));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

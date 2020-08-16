import 'package:courseapp/models/coursemodel.dart';
import 'package:courseapp/pages/homepage.dart';
import 'package:courseapp/services/courseService.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  final courses = CourseService.getCourses();
  print(courses);
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

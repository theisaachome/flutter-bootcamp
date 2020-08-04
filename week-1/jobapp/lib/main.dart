import 'package:flutter/material.dart';
import 'package:jobapp/view/home.dart';

void main() {
  runApp(JobFinderApp());
}

class JobFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

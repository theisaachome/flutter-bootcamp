import 'package:flutter/material.dart';
import 'package:tabbardemo/navigationbar/bottomnavhomepage.dart';
import 'package:tabbardemo/pages/homepage.dart';
void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavDemo(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:week2/pages/home.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;
  final pageOptions=[
    HomePage(),
    Text("Page 2"),
    Text("Page 3  "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Bar"),
      ),
      drawer: Drawer(),
      body: pageOptions[_selectedIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value){
          setState(() {
            _selectedIndex =value;
          });
          print(_selectedIndex);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("DashBoard")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("My Bags")
          ),
        ],
      ),
    );
  }
}



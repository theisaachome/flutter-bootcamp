import 'package:flutter/material.dart';



class BottomNavDemo extends StatefulWidget {
  @override
  _BottomNavDemoState createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {

  int _selectedIndex = 0;
  final pageOptions =[
    Text("Page 1"),
    Text("Page 2"),
    Text("Page 3"),
    Text("Page 4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
          onTap: (value){
           setState(() {
             _selectedIndex=value;
           });
          },

          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text("Explore")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("my Account")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("my Account")
            ),
          ]),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:onlinecourseappp/pages/coursegridlist.dart';
import 'package:onlinecourseappp/pages/courselistpage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;

  final pageOptions=[
    CourseListPage(),
    CourseGridList(),
    Text("Page 3"),
    Text("Page 4")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(27, 72, 162, 1.0)
        ),
        elevation: 0.0,
        backgroundColor:Colors.white.withOpacity(0.8) ,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
        title: Text("Angular University",
        style: TextStyle(
             fontWeight: FontWeight.w600
            ,color: Color.fromRGBO(27, 72, 162, 1.0)),),
      ),
      drawer: Drawer(),
      body:pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(27, 72, 162, 1.0)
        ),
        selectedItemColor: Color.fromRGBO(27, 72, 162, 1.0),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("All Courses")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("search")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("Library")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("Me")
          ),
        ],
      ),
    );
  }
}

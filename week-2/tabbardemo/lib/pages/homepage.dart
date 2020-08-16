import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabbardemo/pages/livetvpage.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 0,length:6,vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Facbook",
        style: TextStyle(color: Colors.blue,
        fontWeight: FontWeight.bold),),
        bottom: TabBar(
          controller: _controller,
         labelPadding: EdgeInsets.all(8),
         unselectedLabelColor: Colors.blueGrey,
         labelColor: Colors.blue,
         onTap: (value){
            print(value);
         },
          dragStartBehavior: DragStartBehavior.start,
         tabs: <Widget>[
           Icon(Icons.home),
           Icon(Icons.live_tv),
           Icon(Icons.group_work),
           Icon(Icons.notifications),
           Icon(Icons.dashboard),
           Icon(Icons.menu)
         ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        dragStartBehavior: DragStartBehavior.start,
        children: <Widget>[
          Text("Home"),
          LiveTvePage(),
          Text("Group Work"),
          Text("New Feeds"),
          Text("Dashboard"),
          Text("Menu")
        ],
      ),
    );
  }
}

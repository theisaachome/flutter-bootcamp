

import 'package:flutter/material.dart';

class CourseGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: myGridViewBuilder(),
    );
  }

  Widget myGridViewBuilder(){
    return GridView.builder(

        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 8,
            childAspectRatio: 2/3

        ),
        itemBuilder: (context,index){
          return Container(
            color: Colors.pink,
          );
        });
  }

  Widget myStaticGridView(){
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2/3,
        children: <Widget>[
          Container(

            color: Colors.green,
          ),
          Container(

            color: Colors.blueGrey,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.pink,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.cyan,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.lime,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.blueGrey,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            height: 180,
            color: Colors.yellow,
          ),
        ],
    );
  }
}

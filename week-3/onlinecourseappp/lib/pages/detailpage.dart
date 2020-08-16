
import 'package:flutter/material.dart';
import 'package:onlinecourseappp/model/coursemodel.dart';
import 'package:onlinecourseappp/pages/reviewpage.dart';
import 'package:onlinecourseappp/style/appStyle.dart';

class DetailPage extends StatelessWidget {

  final Course course;
  DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        backgroundColor: Colors.blueGrey.shade50,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height,
          child: Column(
          children: <Widget>[
           Flexible(
             flex: 2,
             child: Container(
               child: Row(
                 children: <Widget>[
                   Expanded(
                     flex: 2,
                     child: Container(
                       height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(course.iconUrl)
                        )
                      ),
                     ),
                   ),
                   Expanded(
                     flex: 3,
                     child: Container(
                       margin: EdgeInsets.only(left: 16),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[

                           Text(course.url.toUpperCase(),
                           style: titleStyle,),
                           Text(course.description,
                             style: categoryStyle,),
                           Text("${course.lessonsCount} lessons",
                           style: lessonStyle,),
                           Text("\$${course.price}",
                           style: priceStyle,)
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),),
           Divider(
             color: Colors.blueGrey,
           ),
           Flexible(
             flex:3,
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text("About The Course",
                       style: titleStyle,),
                       Icon(Icons.bookmark_border)
                     ],
                   ),
                 ),
                 Text(course.longDescription),
                 Divider(
                   color: Colors.grey,
                   height: 30,
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Text("Reviews",
                     style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                     ReviewWidget(),
                     Row(

                       children: <Widget>[
                         Container(
                           
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey),
                             shape: BoxShape.circle,
                           ),
                           child: IconButton(
                             onPressed: (){},
                             icon: Icon(Icons.favorite_border),
                           ),
                         ),
                         SizedBox(width: 40,),
                         RaisedButton(
                           padding: EdgeInsets.all(14),
                           shape:RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(18.0),
                               side: BorderSide(color: Color.fromRGBO(27, 72, 160, 0.0))
                           ),
                           color:  Color.fromRGBO(27, 72, 160, 1),
                           onPressed: (){},
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Text("Buy Now",
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                               Text("    >>",
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                             ],
                           ),
                         )
                       ],
                     )

                   ],
                 )
               ],
             ),),
          ],
        ),),
      ),
    );
  }

}

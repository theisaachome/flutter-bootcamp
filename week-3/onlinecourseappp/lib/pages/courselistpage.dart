
import 'package:flutter/material.dart';
import 'package:onlinecourseappp/model/coursemodel.dart';
import 'package:onlinecourseappp/pages/detailpage.dart';
import 'package:onlinecourseappp/service/courseService.dart';


class CourseListPage extends StatefulWidget {
  @override
  _CourseListPageState createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  List<Course>  _courses;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    CourseService.getCourses().then((courses) {
      setState(() {
        _courses = courses;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(

            itemCount: _courses ==null ?
            0:_courses.length,
            itemBuilder:(context,index){
              _courses.forEach((element) {
                print(element.category);
              });
              return _buildCourses(_courses[index]);
            } )
    );
  }

  Widget _buildCourses(Course course){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context)=> DetailPage(course)
            )
        );
      },
      child: Hero(
        tag: course.id,

        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(course.iconUrl)
                      )
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(course.category),
                    Text(course.description),
                    Text("\$ ${course.price}"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

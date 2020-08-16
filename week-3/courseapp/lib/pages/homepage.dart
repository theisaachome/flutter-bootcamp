import 'package:courseapp/models/coursemodel.dart';
import 'package:courseapp/services/courseService.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Course> _courses;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    CourseService.getCourses().then((course) {
      setState(() {
        _courses = course;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: _courses == null ? 0 : _courses.length,
            itemBuilder: (context, index) {
              _courses.forEach((element) {
                print(element.category);
              });
              return _buildList(_courses[index]);
            }),
      ),
    );
  }

  Widget _buildList(Course course) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(image: NetworkImage(course.iconUrl))),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    course.category,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  Text(
                    course.description,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text("\$ ${course.price}")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

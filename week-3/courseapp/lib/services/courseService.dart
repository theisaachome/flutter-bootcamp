import 'package:courseapp/models/coursemodel.dart';
import 'package:http/http.dart' as http;

class CourseService {
  static const url = "http://localhost:8080/api/courses";

  static Future<List<Course>> getCourses() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<Course> courses = coursesFromJson(response.body);
        return courses;
      } else {
        return List<Course>();
      }
    } catch (e) {
      return List<Course>();
    }
  }
}

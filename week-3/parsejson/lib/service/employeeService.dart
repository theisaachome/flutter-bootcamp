import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:parsejson/model/employee.dart';

class EmployeeService {
  static Future<String> _loadAssetsData() async {
    return await rootBundle.loadString("assets/employee.json");
  }

  static Future<Employee> getEmployee() async {
    String jsonString = await _loadAssetsData();
    print(jsonString);
    final jsonResponse = jsonDecode(jsonString);
    print(jsonResponse);
    Employee employee = Employee.fromJson(jsonResponse);
    return employee;
  }
}

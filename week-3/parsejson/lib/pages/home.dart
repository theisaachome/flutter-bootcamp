import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parsejson/model/employee.dart';
import 'package:parsejson/pages/addresspage.dart';
import 'package:parsejson/pages/bookpage.dart';
import 'package:parsejson/pages/person.dart';
import 'package:parsejson/pages/photopage.dart';
import 'package:parsejson/service/employeeService.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Employee> employee;

  @override
  void initState() {
    super.initState();
    employee = EmployeeService.getEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: employee,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return UserAccountsDrawerHeader(
                  accountName: Text(snapshot.data.name),
                  accountEmail: Text(snapshot.data.email),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data.imageUrl),
                  ),
                );
              },
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddressPage()));
              },
              leading: Icon(Icons.computer),
              title: Text("JSON Array"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PersonPage()));
              },
              leading: Icon(Icons.computer),
              title: Text("JSON Nested Object"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BookPage()));
              },
              leading: Icon(Icons.computer),
              title: Text("JSON Nested Structure With List"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PhotoPage()));
              },
              leading: Icon(Icons.computer),
              title: Text("JSON List Of Maps"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PhotoPage()));
              },
              leading: Icon(Icons.computer),
              title: Text("Complex Nested Structures"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget myAppbar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  leading: Icon(Icons.menu),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        Icons.tune,
      ),
      onPressed: () {},
    )
  ],
);

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobapp/view/detail-view.dart';
import 'package:jobapp/view/job-title.dart';
import 'package:jobapp/view/match-job.dart';
import 'package:jobapp/view/my-appbar.dart';
import 'package:jobapp/view/recently-add-job.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: myAppbar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            JobTitle(),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobDetailView()));
                },
                child: MatchJob()),
            RecentJobs()
          ],
        ),
      ),
    );
  }
}

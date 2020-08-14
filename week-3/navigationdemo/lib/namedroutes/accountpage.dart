import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blueGrey,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/personlist');
                },
                child: Text("Friend List"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PersonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.popAndPushNamed(context, "/persondetail");
          },
          contentPadding: EdgeInsets.all(8),
          title: Text(" User No $index"),
          leading: CircleAvatar(
            radius: 40,
            child: Text("User"),
          ),
          trailing: Icon(Icons.arrow_forward),
        );
      }),
    );
  }
}

class PersonDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Detail Page of Person"),
        ),
      ),
    );
  }
}

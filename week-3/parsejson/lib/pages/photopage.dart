import 'package:flutter/material.dart';
import 'package:parsejson/model/photo.model.dart';
import 'package:parsejson/service/photoService.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  Future<PhotoList> photolist;
  Photo photo;

  @override
  void initState() {
    super.initState();
    photolist = PhotoService.getPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: photolist,
        builder: (context, snapshot) {
          PhotoList photoList = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: photoList.photoList.length,
                itemBuilder: (context, index) {
                  photoList.photoList.forEach((p) {
                    photo = p;
                  });
                  return ListTile(
                    onTap: () {
                      print("You tap on $index");
                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(photo.thumbnailUrl),
                    ),
                    title: Text(photo.title),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

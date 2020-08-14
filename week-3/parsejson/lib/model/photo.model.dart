class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: json['albumId'],
        id: json["id"],
        title: json["title"],
        thumbnailUrl: json["thumbnailUrl"]);
  }
}

class PhotoList {
  List<Photo> photoList;
  PhotoList({this.photoList});

  factory PhotoList.fromJson(List<dynamic> json) {
    List<Photo> photos = new List();
    photos = json.map((p) => Photo.fromJson(p)).toList();

    return PhotoList(photoList: photos);
  }
}

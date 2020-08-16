
import 'dart:convert';
List<Course>     coursesFromJson (String jsonCourse) {
  return List<Course>.from(json.decode(jsonCourse).map(
      (c) => Course.fromJson(c)
  ));
}


class Course {
  int id;
  String description;
  String longDescription;
  String iconUrl;
  int lessonsCount;
  String category;
  int seqNo;
  String url;
  int price;

  Course(
      {this.id,
        this.description,
        this.longDescription,
        this.iconUrl,
        this.lessonsCount,
        this.category,
        this.seqNo,
        this.url,
        this.price});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        description: json['description'],
        longDescription: json['longDescription'],
        iconUrl: json['iconUrl'],
        lessonsCount: json['lessonsCount'],
        category: json['category'],
        seqNo: json['seqNo'],
        url: json['url'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['longDescription'] = this.longDescription;
    data['iconUrl'] = this.iconUrl;
    data['lessonsCount'] = this.lessonsCount;
    data['category'] = this.category;
    data['seqNo'] = this.seqNo;
    data['url'] = this.url;
    data['price'] = this.price;
    return data;
  }
}

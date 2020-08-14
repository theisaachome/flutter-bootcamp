class Address {
  String city;
  String zip;
  String township;
  String state;
  List<String> streets;
  Address({this.city, this.zip, this.state, this.streets,this.township});

  factory Address.fromJson(Map<String, dynamic> json) {
    var streetsFromJson = json['streets'];
    List<String> streetList = List<String>.from(streetsFromJson);
    return Address(
        city: json['city'],
        zip: json['zip'],
        state: json['state'],
        township: json['township'],
        streets: streetList);
  }
}

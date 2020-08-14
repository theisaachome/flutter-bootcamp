class User {
  String name;
  String fatherName;
  String maritalStatus;
  NRC nrc;

  User({this.name, this.fatherName, this.maritalStatus, this.nrc});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        fatherName: json['fatherName'],
        maritalStatus: json['maritalStatus'],
        nrc: NRC.fromJson(json['nrc']));
  }
}

class NRC {
  String nrcNumber;
  String nrcSerial;

  NRC({this.nrcNumber, this.nrcSerial});

  factory NRC.fromJson(Map<String, dynamic> json) {
    return NRC(nrcNumber: json['nrcNumber'], nrcSerial: json['nrcSerial']);
  }
}

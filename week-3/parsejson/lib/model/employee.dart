class Employee {
  String name;
  String phone;
  String email;
  String imageUrl;

  Employee({this.name, this.phone, this.email, this.imageUrl});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        imageUrl: json["imageUrl"]);
  }
}

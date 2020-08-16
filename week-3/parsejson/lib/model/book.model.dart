class Book {
  List<String> otherFormats;
  String bookTitle;
  String author;
  String releaseDate;
  List<BookFormat> bookFormat;
  String imageUrl;
  String description;

  Book(
      {this.otherFormats,
      this.bookTitle,
      this.author,
      this.releaseDate,
      this.bookFormat,
      this.imageUrl,
      this.description});

  Book.fromJson(Map<String, dynamic> json) {
    otherFormats = json['otherFormats'].cast<String>();
    bookTitle = json['bookTitle'];
    author = json['author'];
    releaseDate = json['releaseDate'];
    if (json['bookFormat'] != null) {
      bookFormat = new List<BookFormat>();
      json['bookFormat'].forEach((v) {
        bookFormat.add(new BookFormat.fromJson(v));
      });
    }
    imageUrl = json['imageUrl'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otherFormats'] = this.otherFormats;
    data['bookTitle'] = this.bookTitle;
    data['author'] = this.author;
    data['releaseDate'] = this.releaseDate;
    if (this.bookFormat != null) {
      data['bookFormat'] =
       this.bookFormat.map((bf) => bf.toJson()).toList();
    }
    data['imageUrl'] = this.imageUrl;
    data['description'] = this.description;
    return data;
  }
}

class BookFormat {
  String format;
  double price;

  BookFormat({this.format, this.price});

  BookFormat.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['price'] = this.price;
    return data;
  }
}

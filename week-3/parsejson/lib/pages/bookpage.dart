import 'package:flutter/material.dart';
import 'package:parsejson/model/book.model.dart';
import 'package:parsejson/service/bookservice.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  Future<Book> book;
  @override
  void initState() {
    super.initState();
    book = BookService.getBook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: book,
        builder: (context, snapshot) {
          Book book = snapshot.data;
          if (snapshot.hasData) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookDetailPage(
                            book: book,
                          )));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(snapshot.data.imageUrl),
                ),
                title: Text(
                  book.bookTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                subtitle: Text("author: ${book.author}"),
              ),
            );
          }
        },
      ),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final Book book;
  BookDetailPage({this.book});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            book.bookTitle,
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Text(
                            book.author,
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(book.releaseDate),
                          Container(
                            height: 130,
                            child: GridView.builder(
                                padding: EdgeInsets.all(8),
                                itemCount: book.bookFormat.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: width / (height / 5),
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  return Card(
                                    elevation: 1.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(book.bookFormat[index].format),
                                        Text(
                                            "\$ ${book.bookFormat[index].price}")
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(16),
                      width: 90,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(book.imageUrl))),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          book.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(letterSpacing: 0.4),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigationdemo/namedroutes/accountpage.dart';
import 'package:navigationdemo/namedroutes/productlist.dart';
import 'package:navigationdemo/namedroutes/shoppingcart.dart';

class NamedRouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/personlist': (context) => PersonList(),
        '/persondetail': (context) => PersonDetailPage()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  var pageOptions = [ProductList(), ShoppingCartPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text("Isaachome"),
              accountEmail: Text("isaachoem@gmail.com"),
            ),
            Flexible(
              child: ListView(
                  children: ListTile.divideTiles(
                      context: context,
                      color: Colors.green,
                      tiles: [
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ]).toList()),
            )
          ],
        ),
      ),
      body: pageOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text("My Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("My Account")),
        ],
      ),
    );
  }
}

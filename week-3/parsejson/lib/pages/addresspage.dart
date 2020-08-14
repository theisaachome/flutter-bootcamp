import 'package:flutter/material.dart';
import 'package:parsejson/model/address.dart';
import 'package:parsejson/service/addressService.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  Future<Address> address;
  @override
  void initState() {
    super.initState();
    address = AddressService.getAddress();
  }

  @override
  Widget build(BuildContext context) {
    print(address);
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: Column(
        children: <Widget>[
          FutureBuilder(
            future: address,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(snapshot.data.city),
                    Text(snapshot.data.zip),
                    Text(snapshot.data.township),
                    Text(snapshot.data.state),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: snapshot.data.streets.length,
                          itemBuilder: (context, index) {
                            var street = snapshot.data.streets[index];
                            return Text(street);
                          }),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

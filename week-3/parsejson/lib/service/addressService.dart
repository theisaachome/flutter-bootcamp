import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:parsejson/model/address.dart';

class AddressService {
  static Future<String> _loadAddress() async {
    return await rootBundle.loadString("assets/address.json");
  }

  static Future<Address> getAddress() async {
    String addressString = await _loadAddress();
    final responseData = jsonDecode(addressString);
    Address address = Address.fromJson(responseData);
    return address;
  }
}

import 'dart:convert';
import 'package:food_app/model/product.dart';
import 'package:http/http.dart' as http;

class Utilities {
  String url = "http://192.168.0.100:3000/api/food";
  static List<Products> data = [];

  Future<List<Products>> getProducts() async {
    var res = await http.get(url as Uri);
    if (res.statusCode == 200) {
      var content = res.body;
      print(content.toString());
      var arr = json.decode(content)["food"] as List;
      return arr.map((e) => _fromJson(e)).toList();
    }
    return <Products>[];
  }

  Products _fromJson(Map<String, dynamic> item) {
    return Products(
        description: item["description"],
        title: item["title"],
        image: item["image"],
        price: item["price"]);
  }

  // static String? validateEmail(String value) {
  //   if (value.isEmpty) {
  //     return "Please enter";
  //   }
  //   Pattern pattern =
  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //   RegExp regex = RegExp(pattern);
  //   if (!regex.hasMatch(value)) {
  //     return 'Please enter a valid Email';
  //   } else {
  //     return null;
  //   }
  // }

  static String? validateEmail(String value) {
    if (value != null || value.isNotEmpty) {
      final RegExp regex = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)| (\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (!regex.hasMatch(value!))
        return 'Enter a valid email';
      else
        return null;
    } else {
      return 'Enter a valid email';
    }
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Please enter a valid";
    }
    if (value.length < 8) {
      return "Please enter a valid";
    }
    return null;
  }

  // static String? conformPassword(String value, String value2) {
  //   if (!equalsIgnoreCase(value, value2)) {
  //     return "Please enter a valid";
  //   }
  //   return null;
  // }
}

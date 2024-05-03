import 'dart:convert';

import 'package:ecommerce/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<List<Products>> fetchProducts() async {
    var response = await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<dynamic> parsedJson = jsonDecode(jsonString);
      List<Products> productsList = parsedJson.map((json) => Products.fromMap(json)).toList();
      return productsList;
    } else {
      throw Exception('Failed to load products');
    }
  }
}

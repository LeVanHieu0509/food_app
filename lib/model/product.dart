import 'package:flutter/material.dart';

class Products {
  int id;
  String title;
  String description;
  String image;
  double price;

  Products(
      {this.id = 0,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  static List<Products> init() {
    List<Products> data = [
      Products(
          id: 1,
          title: "Test title",
          description: "Test description",
          image: "assets/foods/ic_back_coffe",
          price: 8.0),
      Products(
          id: 2,
          title: "Test title 2",
          description: "Test description",
          image: "assets/foods/ic_back_coffe",
          price: 8.0),
      Products(
          id: 3,
          title: "Test title 3",
          description: "Test description",
          image: "assets/foods/ic_back_coffe",
          price: 8.0),
    ];
    return data;
  }
}

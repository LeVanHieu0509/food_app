import 'package:flutter/material.dart';

class Categories {
  int id;
  String title;
  String image;

  Categories({required this.id, required this.title, required this.image});

  static List<Categories> init() {
    List<Categories> data = [
      Categories(id: 1, title: "test title 1", image: "test images"),
      Categories(id: 2, title: "test title 2", image: "test images"),
      Categories(id: 3, title: "test title 3", image: "test images"),
    ];
    return data;
  }
}

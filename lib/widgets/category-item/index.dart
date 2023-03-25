import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/model/categories.dart';

class CategoryItem extends StatelessWidget {
  Categories category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(5),
      child: Image.asset(category.image),
    );
  }
}

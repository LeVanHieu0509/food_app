import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/sections/home-page/categories_store.dart';
import 'package:food_app/sections/home-page/product_popular.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [CategoriesStore(), ProductPopular()],
    ));
  }
}

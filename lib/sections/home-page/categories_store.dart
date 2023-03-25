import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/model/categories.dart';
import 'package:food_app/widgets/category-item/index.dart';

class CategoriesStore extends StatefulWidget {
  const CategoriesStore({super.key});

  @override
  State<CategoriesStore> createState() => _CategoriesStoreState();
}

class _CategoriesStoreState extends State<CategoriesStore> {
  @override
  Widget build(BuildContext context) {
    final categories = Categories.init();
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
                Text("see-more")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(category: categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

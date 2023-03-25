import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search Product",
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          GestureDetector(
            onTap: () {
              //Navigator.pushNamed(context, cartpage.routeName);
            },
            child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
                child: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/screens/account_detail_screen.dart';
import 'package:food_app/screens/favorite_screen.dart';
import 'package:food_app/screens/home_detail_screen.dart';
import 'package:food_app/screens/home_page.dart';
import 'package:food_app/screens/notification_detail_screen.dart';
import 'package:food_app/widgets/home-header/index.dart';
import 'package:food_app/widgets/menu/menu-header.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      HomeDetail(),
      FavoriteScreen(),
      NotificationScreen(),
      AccountDetailScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: flag ? HomeHeader() : MenuHeader(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
            if (selectIndex != 3) {
              flag == true;
            } else {
              flag == false;
            }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account")
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [SizedBox(height: 10), screen[selectIndex]],
      )),
    );
  }
}

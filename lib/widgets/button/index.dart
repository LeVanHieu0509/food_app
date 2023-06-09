import 'dart:html';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/home_page.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  ButtonCustom(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)),
          child: GestureDetector(
              onTap: () async {
                Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName,
                    ModalRoute.withName('/home-page'));
              },
              child: Center(
                  child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))),
        ));
  }
}

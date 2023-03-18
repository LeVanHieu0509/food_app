import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screens/sign_in_screen.dart';
import 'package:food_app/sections/sign_up/index.dart';
import 'package:food_app/widgets/button/index.dart';
import 'package:food_app/widgets/footer/index.dart';
import 'package:food_app/widgets/header/index.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Register Account",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                    Text(
                        "Complete your details or continue \nwith social media",
                        style: TextStyle(color: Colors.green))
                  ],
                )),
            SignUpSection()
          ]),
        ),
      ),
    );
  }
}

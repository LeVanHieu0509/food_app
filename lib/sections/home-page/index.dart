import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/sections/home-page/body.dart';
import 'package:food_app/widgets/home-header/index.dart';

class HomePageSection extends StatelessWidget {
  const HomePageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BodyHomePage(),
    );
  }
}

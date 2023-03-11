import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputField extends StatelessWidget {
  final text;
  final description;

  InputField(this.text, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,
            style: TextStyle(
                fontSize: 32,
                color: Colors.green,
                fontWeight: FontWeight.bold)),
        Text(description, style: TextStyle(color: Colors.green))
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(color: Colors.green),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "Account info",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )));
  }
}

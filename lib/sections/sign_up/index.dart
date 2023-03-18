import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/screens/sign_in_screen.dart';
import 'package:food_app/widgets/button/index.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
                prefixIcon: Icon(Icons.mail_outline)),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                prefixIcon: Icon(Icons.lock_outline_rounded)),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Confirm",
                prefixIcon: Icon(Icons.lock_outline_rounded)),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ButtonCustom("Continue"),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: SvgPicture.asset("/svgs/facebook.svg"),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: SvgPicture.asset("/svgs/google.svg"),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: SvgPicture.asset("/svgs/twitter.svg"),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
              )
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont have an account ?",
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
              GestureDetector(
                onTap: () async {
                  final result = await Navigator.pushNamed(
                      context, SignInScreen.routeName);
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.redAccent, fontSize: 14),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

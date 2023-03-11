import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screens/sign_up_screen.dart';
import 'package:food_app/widgets/button/index.dart';

class SignInSection extends StatelessWidget {
  const SignInSection({super.key});

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("FoodNow",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                Text(
                    "Sign in with your email and password \nor continue with social media",
                    style: TextStyle(color: Colors.green))
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("fb"),
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.cyanAccent),
                          ),
                          Container(
                            child: Text("gg"),
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.cyanAccent),
                          ),
                          Container(
                            child: Text("tw"),
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.cyanAccent),
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
                              context, SignUpScreen.routeName);
                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 14),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        )
      ]),
    ));
  }
}
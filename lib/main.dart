import 'package:flutter/material.dart';
import 'package:food_app/screens/chat_gpt.dart';
import 'package:food_app/screens/sign_in_screen.dart';
import 'package:food_app/screens/sign_up_screen.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:food_app/widgets/splash/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/chat-gpt",
      routes: <String, WidgetBuilder>{
        "/": (context) => SplashScreen(),
        ChatScreen.routeName: (context) => const ChatScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
    );
  }
}

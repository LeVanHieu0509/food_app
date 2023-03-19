import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screens/sign_in_screen.dart';
import 'package:food_app/widgets/splash/index.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(new Duration(seconds: 1)).then((value) => {
          Navigator.pushNamedAndRemoveUntil(
              context, SignInScreen.routeName, ModalRoute.withName('/chat-gpt'))
        });

    return Splash();
  }
}

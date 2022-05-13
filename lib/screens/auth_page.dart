import 'package:flutter/material.dart';
import 'package:neumorphic_signin_and_signup/screens/signIn_screen/signIn_screeen.dart';
import 'package:neumorphic_signin_and_signup/screens/signUp_screens/signUp_screen.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return SignInScreen();
    } else {
      return SignUpScreen();
    }
  }
}

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:neumorphic_signin_and_signup/constants/constants.dart';
import 'package:neumorphic_signin_and_signup/screens/forget_password/forget_password.dart';
import 'package:neumorphic_signin_and_signup/screens/signUp_screens/signUp_screen.dart';
import 'package:neumorphic_signin_and_signup/widgets/account_check.dart';
import 'package:neumorphic_signin_and_signup/widgets/rectangular_button.dart';
import 'package:neumorphic_signin_and_signup/widgets/rectangular_input_field.dart';
import 'package:neumorphic_signin_and_signup/widgets/rounded_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              lightPrimary,
              darkPrimary,
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _head_text(context),
              const SizedBox(
                height: 5,
              ),
              _credential_container(context),
              const SizedBox(
                height: 2,
              ),
              _social_icons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _head_text(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.1),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Text(
            "Vinay Vemula",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _credential_container(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sign In",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 2,
          ),
          const RectangularInputField(
              hintText: "Email Id", icon: Icons.email, obscureText: false),
          const SizedBox(
            height: 2,
          ),
          const RectangularInputField(
              hintText: "Password", icon: Icons.lock, obscureText: true),
          const SizedBox(
            height: 2,
          ),
          Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPassword())),
              child: const Text(
                "Forget Password ?",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          RectangularButton(press: () {}, text: "Sign In")
        ],
      ),
    );
  }

  Widget _social_icons(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(
          "Or",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/google.png'),
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/facebook.png'),
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/twitter.png'),
            ],
          ),
        ),
        const SizedBox(
          height: appPadding,
        ),
        AccountCheck(
            login: true,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SignUpScreen();
              }));
            }),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neumorphic_signin_and_signup/constants/constants.dart';
import 'package:neumorphic_signin_and_signup/screens/signIn_screen/signIn_screeen.dart';
import 'package:neumorphic_signin_and_signup/widgets/account_check.dart';
import 'package:neumorphic_signin_and_signup/widgets/rectangular_button.dart';
import 'package:neumorphic_signin_and_signup/widgets/rectangular_input_field.dart';
import 'package:neumorphic_signin_and_signup/widgets/rounded_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
              SizedBox(
                height: 1,
              ),
              _credential_container(context),
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
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Text(
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
          Text(
            "Forget Password",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 1,
          ),
          RectangularInputField(
              hintText: "New Password", icon: Icons.phone, obscureText: true),
          RectangularInputField(
              hintText: "Confirm New Password",
              icon: Icons.lock,
              obscureText: false),
          SizedBox(
            height: 2,
          ),
          RectangularButton(press: () {}, text: "Save Password")
        ],
      ),
    );
  }

  Widget _social_icons(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          "Or",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Remember your password?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen())),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

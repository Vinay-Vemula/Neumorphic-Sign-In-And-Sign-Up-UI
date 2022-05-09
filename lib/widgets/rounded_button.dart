import 'package:flutter/material.dart';
import 'package:neumorphic_signin_and_signup/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String imagesrc;
  final VoidCallback press;
  const RoundedButton({Key? key, required this.press, required this.imagesrc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(
              top: appPadding / 4, bottom: appPadding / 8),
          child: Container(
            padding: EdgeInsets.all(appPadding / 4),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      lightPrimary,
                      darkPrimary,
                    ]),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(-2, -2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(2, 2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      color: lightShadow)
                ]),
            child: Image.asset(imagesrc),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:neumorphic_signin_and_signup/constants/constants.dart';
import 'package:neumorphic_signin_and_signup/widgets/neumorphic_textfield_container.dart';

class RectangularInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  // ignore: use_key_in_widget_constructors
  const RectangularInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextfieldContainer(
      child: TextField(
        cursorColor: black,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            helperStyle: TextStyle(
              color: black.withOpacity(0.7),
            ),
            prefixIcon: Icon(
              icon,
              color: black.withOpacity(0.7),
              size: 20,
            ),
            border: InputBorder.none),
      ),
    );
  }
}

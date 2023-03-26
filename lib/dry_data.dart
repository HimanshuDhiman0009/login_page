import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea(
      {super.key,
      required this.textColor,
      required this.borderColor,
      required this.text,
      required this.hideLetter});
  final Color textColor;
  final Color borderColor;
  final String text;
  final bool hideLetter;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hideLetter,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: textColor),
        filled: true,
        hintText: text,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
      ),
    );
  }
}

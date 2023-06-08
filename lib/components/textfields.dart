import 'package:flutter/material.dart';


class TextFields extends StatelessWidget {
  const TextFields({super.key, this.controller, required this.hintText, required this.obscureText});
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration:   InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            ),
          ),fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class Text_Theme{
  Text_Theme._();
  static TextTheme light_Text_Theme = TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),

      headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black)

  );

}
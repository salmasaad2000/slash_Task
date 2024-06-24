import 'package:flutter/material.dart';

class OutLine_Button_theme {
  OutLine_Button_theme._();

  static final lightOutLine_Button_theme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color:  Colors.white),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600
      ),
      padding: const EdgeInsets.symmetric( vertical: 16 , horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );


}
import 'package:flutter/material.dart';

class ElevatedButton_Theme{
  ElevatedButton_Theme._();
   static final lightTheme = ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
       elevation: 0,
       foregroundColor: Colors.white,
       backgroundColor: Colors.grey,
       disabledBackgroundColor: Colors.grey,
       disabledForegroundColor: Colors.grey,
       side: const BorderSide(
         color: Colors.white
       ),
       padding: const EdgeInsets.symmetric(vertical: 18),
       textStyle:  const TextStyle(
         fontSize: 16,
         color: Colors.white,
         fontWeight: FontWeight.w600
       ),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),


     )
   );
   

}
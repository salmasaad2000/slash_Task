import 'package:flutter/material.dart';
import 'custom_theme/Chip_theme.dart';
import 'custom_theme/ElevatedButton_Theme.dart';
import 'custom_theme/appBar_Theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/outline_bottom_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class App_Theme{
  App_Theme._();

  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: Text_Theme.light_Text_Theme,
    elevatedButtonTheme: ElevatedButton_Theme.lightTheme,
    appBarTheme: App_Bar_Theme.lightAppBarTheme,
    bottomSheetTheme: Bottom_Sheet_Theme.lightBottomSheetTheme,
    checkboxTheme: CheckBox_Theme.lightCheckboxTheme,
    chipTheme: Chip_Theme.lightChipTheme,
    outlinedButtonTheme: OutLine_Button_theme.lightOutLine_Button_theme,
    inputDecorationTheme: TextField_Theme.lightInputDecorationTheme,
  );
}
import 'package:flutter/material.dart';
import 'package:slash_task/navigatorBottom.dart';
import 'package:slash_task/utils/theme/theme.dart';

void main() {
  runApp(const SlashHomeScreen());
}


class SlashHomeScreen extends StatelessWidget {
  const SlashHomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: App_Theme.lighttheme,
      home: const NavigationBottom(),
    );
  }
}


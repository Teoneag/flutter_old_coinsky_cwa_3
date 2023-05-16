import 'package:flutter/material.dart';

import './utility/names.dart';
import './utility/theme_3.dart';
import './screens/intro_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark, // not wrking
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: Styles.themeData(true, context),
      home: const IntroPage(),
      // home: const HomePage(),
    );
  }
}

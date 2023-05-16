import 'package:flutter/material.dart';

var _secondaryColor = Colors.yellowAccent[700];

ThemeData theme_1 = ThemeData(
  // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
  // .copyWith(secondary: _secondaryColor),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: _secondaryColor,
      fontSize: 45,
      fontWeight: FontWeight.bold,
      fontFamily: '',
    ),
    titleSmall: const TextStyle(
      color: Colors.grey,
      fontSize: 20,
    ),
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontSize: 17,
    ),
  ),
);

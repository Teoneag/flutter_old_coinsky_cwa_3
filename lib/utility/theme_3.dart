import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

var _secondaryColor = Colors.yellowAccent[700];

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: white)
          .copyWith(secondary: _secondaryColor),
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
  }
}

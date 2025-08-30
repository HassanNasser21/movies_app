import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0XFF121312);
  static const Color white = Color(0XFFF2FEFF);
  static const Color darkCharcoal = Color(0XFF282A28);
  static const Color yellow = Color(0XFFF6BD00);
  static const Color red = Color(0XFFFF5659);
  static const Color black = Color(0XFF1C1C1C);
  static const Color gray = Color(0XFF7B7B7B);

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkCharcoal),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkCharcoal),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: black,
        fontFamily: 'Roboto',
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: white,
        fontFamily: 'Roboto',
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: white,
        fontFamily: 'Roboto',
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: white,
        fontFamily: 'Roboto',
      ),
    ),
  );
}

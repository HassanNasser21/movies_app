import 'package:flutter/material.dart';

class AppTheme {
  static const Color black = Color(0xFF121312);
  static const Color grey = Color(0xFF282A28);
  static const Color yellow = Color(0xFFFFBB3B);
  static const Color transparentYellow = Color(0xFFF6BD00);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFE82626);

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme: AppBarTheme(
      backgroundColor: black,
      foregroundColor: yellow,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: yellow,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        textStyle: TextStyle(
          fontSize: 20,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

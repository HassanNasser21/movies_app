import 'package:flutter/material.dart';
import 'package:movies_app/constants/app_theme.dart';
import 'package:movies_app/update_profile_screen/update_profile_screen.dart';

void main() {
  var app = MoviesApp;
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdateProfileScreen(),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
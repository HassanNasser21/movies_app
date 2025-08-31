import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:movies_app/onboarding/onboarding_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
   routes: {
    OnboardingScreens.nameroute:(context) => const OnboardingScreens(),
   },
   initialRoute: OnboardingScreens.nameroute,
    
    );
  }
}
=======
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
>>>>>>> 9904d53562dbf89b6da765c701de07715b74751e

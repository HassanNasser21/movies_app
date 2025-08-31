import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:movies_app/onboarding/onboarding_screens.dart';


=======
<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> 89a7fd65011552e919aadb58b840ce49084e7168
import 'package:movies_app/onboarding/onboarding_screens.dart';



<<<<<<< HEAD
=======
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
>>>>>>> 89a7fd65011552e919aadb58b840ce49084e7168
>>>>>>> 8675121e84bce8d0fefcdd41ddc6a4ef0d2ecd70
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
      routes: {
        OnboardingScreens.nameroute:(context)=>OnboardingScreens(),
      },
      initialRoute: OnboardingScreens.nameroute,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
>>>>>>> 9904d53562dbf89b6da765c701de07715b74751e
>>>>>>> 89a7fd65011552e919aadb58b840ce49084e7168
>>>>>>> 8675121e84bce8d0fefcdd41ddc6a4ef0d2ecd70

import 'package:flutter/material.dart';
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

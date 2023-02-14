import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnp_app/screens/landing_screen.dart';
import 'package:tnp_app/screens/login_screen.dart';
import 'package:tnp_app/screens/opening_screen.dart';
import 'package:tnp_app/screens/registration_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LandingScreen.id:(context) => const LandingScreen(),
        RegistrationScreen.id:(context) => const RegistrationScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
        OpeningScreen.id:(context) => const OpeningScreen()
      },
      initialRoute: LandingScreen.id,

    );
  }
}

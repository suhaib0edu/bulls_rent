import 'package:bulls_rent/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bull`s rent',
      routes: {
        '/Splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/Signup': (context) => const SignupScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}

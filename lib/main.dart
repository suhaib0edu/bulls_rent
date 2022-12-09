import 'package:bulls_rent/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/auth/splash_screen.dart';
import 'screens/home_screen.dart';

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
        '/Home': (context) => const HomeScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}

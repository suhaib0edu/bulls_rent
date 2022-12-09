import 'package:bulls_rent/screens/login_screen.dart';
import 'package:flutter/material.dart';

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
        '/SplashScreen': (context) => SplashScreen(),
        '/login': (context) => const LoginScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}

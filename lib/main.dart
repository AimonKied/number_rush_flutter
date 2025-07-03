import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NumberRushApp());
}

class NumberRushApp extends StatelessWidget {
  const NumberRushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Rush',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}

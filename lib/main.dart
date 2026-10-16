import 'package:flutter/material.dart';
import 'package:sadman/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF6F5E9),
        primaryColor: const Color(0xFF6B713F),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6B713F),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}
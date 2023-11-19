import 'package:flutter/material.dart';
import 'package:thaalam_music_app/config/theme.dart';
import 'package:thaalam_music_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thaalam App',
      theme: darkTheme,
      home: const HomeScreen(),
    );
  }
}

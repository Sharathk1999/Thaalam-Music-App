import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/theme.dart';
import 'package:thaalam_music_app/screens/songs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thaalam App',
      theme: darkTheme,
      home:  SongsScreen(),
    );
  }
}


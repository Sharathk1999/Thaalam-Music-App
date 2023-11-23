import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/theme.dart';
import 'package:thaalam_music_app/firebase_options.dart';
import 'package:thaalam_music_app/screens/songs_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home:const SongsScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thaalam_music_app/config/Colors.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme:const  ColorScheme.dark(
    background: bgColor,
    primary: primaryColor,
  ),
  
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.dotGothic16(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: fontColor,
    ),
    bodyMedium: GoogleFonts.dotGothic16(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: fontColor,
    ),
    bodySmall:GoogleFonts.dotGothic16(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: fontColor,
    ),
    labelSmall: GoogleFonts.dotGothic16(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: fontColor,
    ),
    labelMedium:GoogleFonts.dotGothic16(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: fontColor,
    ),
  )

);
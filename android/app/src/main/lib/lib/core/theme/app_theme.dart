import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryPurple = Color(0xFF6200EE);
  static ThemeData get lightTheme => ThemeData(
    primaryColor: primaryPurple,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryPurple, primary: primaryPurple),
    textTheme: GoogleFonts.poppinsTextTheme(),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(backgroundColor: primaryPurple, foregroundColor: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: primaryPurple,
      unselectedItemColor: Colors.grey,
    ),
  );
}

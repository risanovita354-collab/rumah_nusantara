import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF5B92E5);
  static const Color background = Color(0xFFF8F9FA);
  static const Color cardBg = Colors.white;
  static const Color textDark = Color(0xFF212529);
  static const Color textMuted = Color(0xFF6C757D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: background,
    fontFamily: 'Sans-Serif',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: textDark),
      titleTextStyle: TextStyle(color: textDark, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
    ),
  );
}
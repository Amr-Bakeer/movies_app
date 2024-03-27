import 'package:flutter/material.dart';

class ApplicationThemeManager {

  static const primaryColor = Color(0xFFF7B539);

  static ThemeData applicationThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xff121312),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff1A1A1A),
      selectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 32,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 11
      ),
      unselectedItemColor: Color(0xffC6C6C6),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC6C6C6),
        size: 32,
      ),
      unselectedLabelStyle: TextStyle(
          fontSize: 11
      ),

    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  );
}
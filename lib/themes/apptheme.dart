import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const double titleLarge = 24;
  static const double titleMedium = 20;
  static const double bodyLarge = 18;
  static const double bodyMedium = 16;
  static const double bodySmall = 14;
  static const double labelLarge = 12;
  static const double labelMedium = 10;
  static String? Appfont = GoogleFonts.poppins().fontFamily;

  static final ThemeData lightMode = ThemeData(
    fontFamily: Appfont,
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade100,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade700,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: titleLarge,
        fontFamily: Appfont,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: titleMedium,
        fontFamily: Appfont,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: bodyLarge,
        fontFamily: Appfont,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: bodyMedium,
        fontFamily: Appfont,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: bodySmall,
        fontFamily: Appfont,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: labelLarge,
        fontFamily: Appfont,
      ),
      labelMedium: TextStyle(
        color: Colors.black,
        fontSize: labelMedium,
        fontFamily: Appfont,
      ),
    ),
  );

  static final ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.dark(
      background: const Color.fromARGB(255, 20, 20, 20),
      primary: const Color.fromARGB(255, 122, 122, 122),
      secondary: const Color.fromARGB(255, 30, 30, 30),
      tertiary: const Color.fromARGB(255, 47, 47, 47),
      inversePrimary: Colors.grey.shade300,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: titleLarge,
        fontFamily: Appfont,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: titleMedium,
        fontFamily: Appfont,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: bodyLarge,
        fontFamily: Appfont,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: bodyMedium,
        fontFamily: Appfont,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: bodySmall,
        fontFamily: Appfont,
      ),
      labelLarge: TextStyle(
        color: Colors.white,
        fontSize: labelLarge,
        fontFamily: Appfont,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
        fontSize: labelMedium,
        fontFamily: Appfont,
      ),
    ),
  );
}

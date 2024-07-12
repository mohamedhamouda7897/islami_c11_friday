import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFFB7935F);
Color primaryDarkColor = Color(0xFF141A2E);
Color blackColor = Color(0xFF242424);
Color yellowColor = Color(0xFFFACC1D);

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      dividerColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          backgroundColor: primaryColor,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(size: 30, color: blackColor),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // titleTextStyle:ThemeDa,
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: primaryColor,
          onError: primaryColor,
          background: primaryColor,
          onBackground: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ))
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      dividerColor: yellowColor,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          backgroundColor: primaryDarkColor,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(size: 30, color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // titleTextStyle:ThemeDa,
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: primaryColor,
          onError: primaryColor,
          background: primaryColor,
          onBackground: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            color: yellowColor,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ))
  );
}

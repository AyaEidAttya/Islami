import 'package:flutter/material.dart';

class MyThemData {
  static const Color colorblack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color goldcolor = Color.fromRGBO(183, 147, 95, 1.0);
  static const Color primaryDarkColor = Color.fromRGBO(15, 29, 36, 1.0);
  static const Color onPrimary = Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData LightThem = ThemeData(
      primaryColor: goldcolor,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
        primary: goldcolor,
        onPrimary: colorblack,
        error: Colors.red,
        onError: Colors.white,
        surface: goldcolor,
        onSurface: Colors.white,
        background: Colors.transparent,
        onBackground: Colors.black,
        secondary: Colors.brown,
        brightness: Brightness.light,
        onSecondary: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: colorblack,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 30, color: colorblack, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 25, color: colorblack),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: goldcolor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      )
  );
  static ThemeData DarkThem =
      ThemeData(primaryColor: primaryDarkColor,
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: const ColorScheme(
            primary: primaryDarkColor,
            onPrimary: onPrimary,
            error: Colors.red,
            onError: Colors.white,
            surface: primaryDarkColor,
            onSurface: Colors.white,
            background: Colors.transparent,
            onBackground: onPrimary,
            secondary:onPrimary,
            brightness: Brightness.dark,
            onSecondary: onPrimary,
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,

            iconTheme: IconThemeData(
              color: onPrimary,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(fontSize: 25, color: onPrimary),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: onPrimary,
            selectedItemColor: onPrimary,
            unselectedItemColor: Colors.white,
          )
      );
}

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const MaterialColor primarySwatch =
      MaterialColor(_colorPrimaryValue, <int, Color>{
    50: Color(0xFFEFEAFF),
    100: Color(0xFFD7CAFF),
    200: Color(0xFFBDA7FF),
    300: Color(0xFFA384FF),
    400: Color(0xFF8F69FF),
    500: Color(_colorPrimaryValue),
    600: Color(0xFF7348FF),
    700: Color(0xFF683FFF),
    800: Color(0xFF5E36FF),
    900: Color(0xFF4B26FF),
  });
  static const int _colorPrimaryValue = 0xFF7B4FFF;

  static ThemeData lightTheme = ThemeData(
      primarySwatch: primarySwatch,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: AppColors.darkPurpleColor,
        elevation: 0,
      ),
      iconTheme: IconThemeData(color: AppColors.darkPurpleColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: AppColors.darkPurpleColor,
        unselectedItemColor: AppColors.greyColor,
      ));
}

class AppColors {
  AppColors._();

  static const redColor = Color(0xffff4f4f);
  static const greenColor = Color(0xff4fff76);
  static const greyColor = Color(0xffb4b8ca);
  static const purpleColor = Color(0xff7b4fff);
  static const darkPurpleColor = Color(0xff2e3a5c);
}

class AppTextStyle {
  AppTextStyle._();

  static TextStyle regular14({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: color ?? AppColors.greyColor,
    );
  }

  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: color ?? AppColors.greyColor,
    );
  }

  static TextStyle regular18({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      color: color ?? AppColors.darkPurpleColor,
    );
  }

  static TextStyle regular22({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 22,
      color: color ?? AppColors.darkPurpleColor,
    );
  }

  static TextStyle medium12({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: color ?? AppColors.greyColor,
    );
  }

  static TextStyle medium14({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: color ?? AppColors.greyColor,
    );
  }

  static TextStyle medium28({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 28,
      color: color ?? AppColors.darkPurpleColor,
    );
  }

  static TextStyle bold16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color ?? AppColors.greyColor,
    );
  }

  static TextStyle bold26({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: color ?? AppColors.darkPurpleColor,
    );
  }

  static TextStyle bold40({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
      color: color ?? AppColors.darkPurpleColor,
    );
  }
}

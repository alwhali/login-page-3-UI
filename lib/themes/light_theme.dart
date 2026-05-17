import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  dialogBackgroundColor: AppColors.bodyColor,
  primaryColor: AppColors.bodyColor,

  scaffoldBackgroundColor: AppColors.bodyColor,
  hintColor: AppColors.textColor,
  primaryColorLight: AppColors.buttonBackgroundColor,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.black,
  ),
);

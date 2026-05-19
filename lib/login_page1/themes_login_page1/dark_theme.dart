import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.bodyColorDark,
  scaffoldBackgroundColor: AppColors.bodyColorDark,
  hintColor: AppColors.textColor,
  primaryColorLight: AppColors.buttonBackgroundColorDark,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.white,
  ),
);

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_login_pages/login_page1/login_page1.dart';
import 'package:ui_login_pages/login_page1/themes_login_page1/app_theme.dart';
import 'package:ui_login_pages/login_page1/themes_login_page1/model_theme.dart';
import 'package:ui_login_pages/login_page2/login_page2.dart';
import 'package:ui_login_pages/login_page3/login_page3_signup.dart';
import 'package:ui_login_pages/login_page3/login_page3_welcome.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
            debugShowCheckedModeBanner: false,

            home: LoginPage1(),
            // home: LoginPage2(),
            // home: LoginPage3Welcome(),
          );
        },
      ),
    ),
  );
}

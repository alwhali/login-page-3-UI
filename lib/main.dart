import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_login_pages/pages/login_page1.dart';
import 'package:ui_login_pages/themes/app_theme.dart';
import 'package:ui_login_pages/themes/model_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            home: LoginPage1(),
            theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    ),
  );
}

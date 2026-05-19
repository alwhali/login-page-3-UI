import 'package:flutter/material.dart';
import 'package:ui_login_pages/login_page1/themes_login_page1/theme_shared_preferance.dart';

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  late ThemeSharedPreferences _preferences;
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemeSharedPreferences();
    getThemeFromSharedPref();
  }

  set setThemeToSharedPref(String Theme) {
    bool isDark = Theme == "Dark" ? true : false;
    _isDark = isDark;
    _preferences.setTheme(isDark);
    notifyListeners();
  }

  getThemeFromSharedPref() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  // Dari luar hanya boleh dibaca, perubahan wajib lewat setDarkMode()
  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void setDarkMode(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // MaterialApp ikut rebuild dan tema berganti
  }
}

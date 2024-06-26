import 'package:flutter/material.dart';
import 'package:foody/themes/apptheme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = AppTheme.lightMode;

  ThemeData get themedata => _themeData;

  bool get IsDarkmode => _themeData == AppTheme.darkMode;

  set themedata(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == AppTheme.lightMode) {
      themedata = AppTheme.darkMode;
    } else {
      themedata = AppTheme.lightMode;
    }
  }
}

import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider({bool isDarkMode = false})
      : _themeData = isDarkMode ? _darkTheme : _lightTheme;

  ThemeData get themeData => _themeData;

  void setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  static final ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    // Add other light theme properties here
  );

  static final ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    // Add other dark theme properties here
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      // Add other dark theme properties here
    );
  }

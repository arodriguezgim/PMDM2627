import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  // Iniciamos el provider
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void cambiarTema() {
      _themeMode = _themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;

      notifyListeners();
  }
}
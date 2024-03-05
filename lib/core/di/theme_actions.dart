import 'package:flutter/material.dart';

abstract class ThemeActions {
  void setThemeMode(ThemeMode themeMode);
  ThemeMode? getThemeMode();
}
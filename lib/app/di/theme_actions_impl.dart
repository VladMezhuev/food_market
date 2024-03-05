import 'package:flutter/material.dart';
import 'package:food_fabrica/core/di/theme_actions.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ThemeActions)
class ThemeActionsImpl extends ThemeActions {
  final SharedPreferences _sharedPreferences;

  ThemeActionsImpl(this._sharedPreferences);

  static const _themeToken = 'theme_token';

  @override
  ThemeMode? getThemeMode() {
    final isDark = _sharedPreferences.getBool(_themeToken);

    if (isDark != null) {
      return isDark ? ThemeMode.dark : ThemeMode.light;
    }
    return null;
  }

  @override
  void setThemeMode(ThemeMode themeMode) {
    final isDark = themeMode == ThemeMode.dark;
    _sharedPreferences.setBool(_themeToken, isDark);
  }
}

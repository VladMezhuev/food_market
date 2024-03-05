import 'package:flutter/material.dart';
import 'package:food_fabrica/core/di/theme_actions.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRepository {
  final ThemeActions _themeActions;

  const AppRepository(this._themeActions);

  void setThemeMode(ThemeMode themeMode) {
    _themeActions.setThemeMode(themeMode);
  }

  ThemeMode? getThemeMode() {
    return _themeActions.getThemeMode();
  }
}
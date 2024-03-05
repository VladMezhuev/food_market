import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_fabrica/data/app/repositories/app_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';

part 'app_cubit.freezed.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppRepository _appRepository;

  AppCubit(
    this._appRepository,
  ) : super(const AppState()) {
    checkThemeMode();
  }

  void checkThemeMode() {
    final themeMode = _appRepository.getThemeMode();
    if (themeMode != null) {
      emit(state.copyWith(themeMode: themeMode));
    } else {
      emit(state.copyWith(themeMode: ThemeMode.system));
    }
  }

  void onToggleTheme() {
    final themeMode =
        state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    emit(state.copyWith(themeMode: themeMode));
    _appRepository.setThemeMode(themeMode);
  }
}

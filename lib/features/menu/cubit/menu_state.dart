part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState([
    @Default(false) bool loading,
  ]) = _MenuState;
}

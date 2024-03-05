part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState([
    AuthEvent? event,
  ]) = _AuthState;
}

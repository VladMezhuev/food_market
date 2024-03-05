import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@unfreezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.navToLogin() = NavToLogin;
  const factory AuthEvent.confirmLogout() = ConfirmLogout;
}
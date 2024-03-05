import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_fabrica/features/auth/auth/cubit/auth_event.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:plat4ma/data/auth/repositories/auth_repository.dart';
// import 'package:plat4ma/features/auth/auth/cubit/auth_event.dart';
// import 'package:plat4ma/core/models/auth/auth_event.dart' as global;

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  // final AuthRepository _authRepository;
  // final FirebaseMessaging _firebaseMessaging;

  StreamSubscription? _stream;

  AuthCubit(
    // this._authRepository,
    // this._firebaseMessaging,
  ) : super(const AuthState()) {
    // _stream = _authRepository.observeEvent().listen((event) {
    //   if (event is global.LogoutAuthEvent) onLogoutConfirmed();
    // });
  }

  // void onLogout() {
  //   emit(state.copyWith(event: const AuthEvent.confirmLogout()));
  //   emit(state.copyWith(event: null));
  // }

  // void onLogoutConfirmed() {
  //   _authRepository.logout();
  //   _firebaseMessaging.deleteToken();
  //   emit(state.copyWith(event: const AuthEvent.navToLogin()));
  //   emit(state.copyWith(event: null));
  // }

  @override
  Future<void> close() {
    if (_stream != null) {
      _stream?.cancel();
    }
    return super.close();
  }
}

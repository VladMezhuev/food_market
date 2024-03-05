import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/core/storage/shared_preferences_provider.dart';
import 'package:food_fabrica/injections.config.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();

@module
abstract class AppModule {
  // @lazySingleton
  // Dio provideDio(Authenticator authenticator, ErrorHandler errorHandler) {
  //   final apiUrl = Constants.server;
  //   return dio_source.provideDio(apiUrl, authenticator, errorHandler);
  // }

  // @preResolve
  // Future<FirebaseMessaging> firebaseMessaging(
  //     NotificationRepository notificationRepository,
  //     ) {
  //   return provideFirebaseMessaging(notificationRepository);
  // }

  // @preResolve
  // Future<FirebaseAuth> firebaseAuth() {
  //   return provideFirebaseAuth();
  // }

  @preResolve
  Future<SharedPreferences> get prefs => provideSharedPreferences();
}

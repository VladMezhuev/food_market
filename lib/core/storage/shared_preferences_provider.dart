import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> provideSharedPreferences() {
  return SharedPreferences.getInstance();
}
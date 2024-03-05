import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_fabrica/app/app.dart';
import 'package:food_fabrica/gen/colors.gen.dart';
import 'package:food_fabrica/injections.dart';

void bootstrap() async {
  FlutterError.onError = (details) {
    if (kDebugMode) {
      print(details.exceptionAsString());
      print(details.stack.toString());
    }
  };

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // await Firebase.initializeApp();
    // await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await configureDependencies();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: AppColors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.transparent,
      ),
    );

    runApp(
      // EasyLocalization(
      //   supportedLocales: const [Locale('uk')],
      //   path: 'assets/translations',
      //   useOnlyLangCode: true,
      //   assetLoader: CustomAssetLoader(),
      //   useFallbackTranslations: true,
      //   fallbackLocale: const Locale('uk'),
      //   saveLocale: false,
      //   child: App(),
      // ),
      App(),
    );
  }, (error, stackTrace) {
    if (kDebugMode) {
      print(error.toString());
      print(stackTrace.toString());
    }
  });
}

import 'package:flutter/material.dart';
import 'package:food_fabrica/gen/colors.gen.dart';
import 'package:food_fabrica/gen/fonts.gen.dart';

class MyThemes {
  static final lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.black,
    secondaryHeaderColor: AppColors.black,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.appBarLight,
    ),
    // canvasColor: AppColors.appBarLight,

    // Common
    fontFamily: FontFamily.montserrat,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.white,
    secondaryHeaderColor: AppColors.green,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.appBarDark,
    ),


    // Common
    fontFamily: FontFamily.montserrat,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}

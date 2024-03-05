import 'package:flutter/material.dart';
import 'package:food_fabrica/app/app.dart';
import 'package:food_fabrica/gen/colors.gen.dart';
import 'package:food_fabrica/gen/fonts.gen.dart';

// Montserrat medium
final textMdSm = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
          Brightness.dark
      ? AppColors.white
      : AppColors.black,
);

final textMdMd = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
          Brightness.dark
      ? AppColors.white
      : AppColors.black,
);

const textMdMdGreen = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: AppColors.green,
);

// Montserrat bold
final textBlMd = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
          Brightness.dark
      ? AppColors.white
      : AppColors.black,
);

// Oswald light
final textOsLhMd = TextStyle(
  fontFamily: FontFamily.oswald,
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
          Brightness.dark
      ? AppColors.white
      : AppColors.black,
);

final textOsLhMdUnderline = TextStyle(
  fontFamily: FontFamily.oswald,
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
          Brightness.dark
      ? AppColors.white
      : AppColors.black,
  decoration: TextDecoration.underline,
  decorationColor:
      MediaQuery.of(shellNavigatorKey.currentContext!).platformBrightness ==
              Brightness.dark
          ? AppColors.white
          : AppColors.black,
);

const textOsLhMdGreen = TextStyle(
  fontFamily: FontFamily.oswald,
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: AppColors.green,
);

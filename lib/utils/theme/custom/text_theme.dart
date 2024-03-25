import 'package:flutter/material.dart';
import 'package:getx_example/utils/constants/colors.dart';
import 'package:getx_example/utils/constants/sizes.dart';

class ETextTheme {
  ETextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: const TextStyle().copyWith(
      fontSize: ESizes.bodyLg,
      color: EColors.textLight,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: ESizes.bodyMd,
      color: EColors.textLight,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: ESizes.bodySm,
      color: EColors.textLight,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: const TextStyle().copyWith(
      fontSize: ESizes.bodyLg,
      color: EColors.textDark,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: ESizes.bodyMd,
      color: EColors.textDark,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: ESizes.bodySm,
      color: EColors.textDark,
    ),
  );
}

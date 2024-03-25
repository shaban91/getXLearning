import 'package:flutter/material.dart';
import 'package:getx_example/utils/constants/colors.dart';
import 'package:getx_example/utils/theme/custom/text_theme.dart';

class ETheme {
  ETheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: EColors.backgroundLight,
    primaryColor: EColors.primary,
    textTheme: ETextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: EColors.backgroundDark,
    primaryColor: EColors.primary,
    textTheme: ETextTheme.darkTextTheme,
  );
}

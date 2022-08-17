import 'package:flutter/material.dart';
import 'package:flutter_education_app/configs/themes/sub_theme_dart_mixin.dart';

const Color primaryDarkColorDark=Color(0xFF2e3c62);
const Color primaryColorDark=Color(0xFF99ace1);
const mainTextColorDark=Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: getIconTheme(),
        textTheme: getTextThemes().apply(
            bodyColor:mainTextColorDark,
            displayColor: mainTextColorDark
        ));
  }
}

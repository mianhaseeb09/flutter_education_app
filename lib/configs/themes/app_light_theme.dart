import 'package:flutter/material.dart';
import 'package:flutter_education_app/configs/themes/sub_theme_dart_mixin.dart';

const Color primaryLightColorLight = Color(0xFF3ac3cb);
const Color primaryColorLight = Color(0xFFf85187);
const Color mainTextColorLight=Color.fromARGB(255, 40, 40, 40);
class LightTheme with SubThemeData {
  ThemeData buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: getIconTheme(),
    textTheme: getTextThemes().apply(
      bodyColor:mainTextColorLight,
      displayColor: mainTextColorLight
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_education_app/configs/themes/app_dark_theme.dart';
import 'package:flutter_education_app/configs/themes/ui_parametre.dart';
import 'app_light_theme.dart';


const Color onSurfaceTextColor=Colors.white;


const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLightColorLight, primaryColorLight]);
const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryDarkColorDark, primaryColorDark]);

LinearGradient mainGradient(BuildContext context) =>
    UiParametre.isDarkMode(context) ? mainGradientDark : mainGradientLight;

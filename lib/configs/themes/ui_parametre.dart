import 'package:flutter/material.dart';
class UiParametre{

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness==Brightness.dark;

  }
}
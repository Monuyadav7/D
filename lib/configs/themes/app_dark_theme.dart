import 'package:app/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const Color primaryDarkColorDark = Color(0xFF2e3c62);
const Color primaryColorDark = Color(0xFF99ace1);
class DarkTheme with SubThemeData{
  ThemeData buildDarkTheme(){
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: getIconTheme(),
      textTheme: getTextTheme()
       );
  }
}
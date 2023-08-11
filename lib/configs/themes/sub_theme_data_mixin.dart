import 'package:app/configs/themes/app_colors.dart';
import 'package:app/configs/themes/app_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const Color mainTextColor = Color.fromARGB(255, 230, 30, 30);
mixin SubThemeData {
  getTextTheme(){
    GoogleFonts.quicksandTextTheme(
        const TextTheme(
          bodyLarge: TextStyle(
            color: mainTextColor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
            color: mainTextColor,
          fontWeight: FontWeight.w400,
        )
        )
    );
  }
  getIconTheme(){
    const IconThemeData(color: onSurfaceTextColor,size:16);
  }

}
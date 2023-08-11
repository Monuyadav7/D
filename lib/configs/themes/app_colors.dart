import 'package:app/configs/themes/app_light_theme.dart';
import 'package:app/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_dark_theme.dart';

const Color onSurfaceTextColor = Colors.white;
const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryLightColorLight,
      primaryColorLight
    ]
);
const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryDarkColorDark,
      primaryColorDark
    ]
);
//Check for what mode we are in
LinearGradient mainGradient() =>
  UIParameters.isDarkmode()? mainGradientDark:mainGradientLight;

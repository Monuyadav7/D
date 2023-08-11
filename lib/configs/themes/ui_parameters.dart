import 'package:flutter/material.dart';
import 'package:get/get.dart';
const double _mobileScreenPadding = 25.0;
const double _cardborderRadius = 10.0;
double get mobileScreenPadding=>_mobileScreenPadding;
double get cardborderRadius =>_cardborderRadius;
class UIParameters{
  static BorderRadius get cardborderRadius=>BorderRadius.circular(_cardborderRadius);
  static EdgeInsets get mobileScreenPadding=>const EdgeInsets.all(_mobileScreenPadding);
  static bool isDarkmode(){
    return Get.isDarkMode?true:false;
  }
}
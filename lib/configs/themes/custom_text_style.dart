import 'package:app/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

TextStyle cartTitles(context)=>TextStyle(
                  color: UIParameters.isDarkmode()?Theme.of(context).textTheme.bodyMedium!.color:
                  Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                );
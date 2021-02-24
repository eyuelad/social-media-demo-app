import 'package:flutter/material.dart';
import 'package:social_demo/src/styles/colors.dart';

final defaultTheme = ThemeData(
  primaryColor: colors.primary,
  primaryColorDark: colors.grayDark,
  accentColor: colors.secondary,
  appBarTheme: AppBarTheme(
    color: colors.white,
    textTheme: TextTheme(
      headline3: TextStyle(
        fontSize: 20,
        color: colors.grayDark,
      )
    )
  ),
  buttonColor: colors.primary,
  buttonTheme: ButtonThemeData(
    buttonColor: colors.primary,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
      color: colors.grayDark,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      color: colors.gray,
    ),
    headline1: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.bold,
      color: colors.primary,
    ),
    headline3: TextStyle(
      fontSize: 20,
      color: colors.grayDark,
    ),
    headline6: TextStyle(
      fontSize: 14,
      color: colors.grayDark,
    ),
    button: TextStyle(
      fontSize: 16,
      color: colors.white,
    ),
  )
);
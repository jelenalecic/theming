import 'package:flutter/material.dart';
import '../config.dart';
import 'theme_color_scheme.dart';

ThemeColorScheme get currentColorScheme =>
    currentColorMode == ColorMode.light ? light : dark;

ThemeColorScheme light = ThemeColorScheme(
  primaryColor: Colors.pink,
  accentColor: const Color(0xff7790b9),
  listItemBackground: Colors.white.withOpacity(0.2),
  primaryTextColor: Colors.white,
  secondaryTextColor: const Color(0xffeeeeee),
  surfaceColor: Colors.white,
  appBarTitleColor: Colors.white,
  backgroundGradientColor1: const Color(0xfff1ccc4),
  backgroundGradientColor2: const Color(0xffd76d81),
  backgroundGradientColor3: const Color(0xffaf3e8d),
  primaryButtonGradient1: const Color(0xffe1a1ad),
  primaryButtonGradient2: const Color(0xffd76d81),
  secondaryButtonGradient1: const Color(0xff802f66),
  secondaryButtonGradient2: const Color(0xff521642),
);

ThemeColorScheme dark = ThemeColorScheme(
  primaryColor: Colors.black,
  accentColor: const Color(0xff19bfbc),
  listItemBackground: const Color(0xff282947),
  primaryTextColor: const Color(0xffe5e4e9),
  secondaryTextColor: const Color(0xffaaaaaa),
  surfaceColor: Colors.blueGrey,
  appBarTitleColor: Colors.white,
  backgroundGradientColor1: const Color(0xff1c2e5b),
  backgroundGradientColor2: const Color(0xff0e1116),
  backgroundGradientColor3: const Color(0xff2a2160),
  primaryButtonGradient1: const Color(0xff246afd),
  primaryButtonGradient2: const Color(0xff8e18ce),
  secondaryButtonGradient1: const Color(0xff521f6e),
  secondaryButtonGradient2: const Color(0xff3b1d9f),
);

Color get primaryColor => currentColorScheme.primaryColor;
Color get surfaceColor => currentColorScheme.surfaceColor;
Color get accentColor => currentColorScheme.accentColor;
Color get primaryTextColor => currentColorScheme.primaryTextColor;
Color get secondaryTextColor => currentColorScheme.secondaryTextColor;
Color get listItemBackground => currentColorScheme.listItemBackground;
Color get appBarTitleColor => currentColorScheme.appBarTitleColor;
Color get backgroundGradientColor1 =>
    currentColorScheme.backgroundGradientColor1;
Color get backgroundGradientColor2 =>
    currentColorScheme.backgroundGradientColor2;
Color get backgroundGradientColor3 =>
    currentColorScheme.backgroundGradientColor3;
Color get primaryButtonGradient1 => currentColorScheme.primaryButtonGradient1;
Color get primaryButtonGradient2 => currentColorScheme.primaryButtonGradient2;
Color get secondaryButtonGradient1 =>
    currentColorScheme.secondaryButtonGradient1;
Color get secondaryButtonGradient2 =>
    currentColorScheme.secondaryButtonGradient2;

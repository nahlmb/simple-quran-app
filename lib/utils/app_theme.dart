import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.black,
    primaryColorDark: Colors.black,
    canvasColor: Colors.white,
    fontFamily: "Libre Baskerville",
    textTheme: GoogleFonts.libreBaskervilleTextTheme());

final ThemeData appDarkTheme = ThemeData(
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black,
    indicatorColor: Colors.white,
    fontFamily: "Libre Baskerville",
    canvasColor: Colors.black,
    dividerColor: Colors.white.withOpacity(0.3),
    textTheme: GoogleFonts.libreBaskervilleTextTheme()
        .apply(bodyColor: Colors.white, displayColor: Colors.grey.shade300));

final appTextStyle = GoogleFonts.libreBaskerville();

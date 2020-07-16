import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const kPrimaryColor = Color(0xFF303030);
const kPrimaryVariant = Color(0xFF4B4B4B);
const kSecondaryColor = Color(0xFF3382CC);
const kSecondaryVariant = Color(0xFF3382CC);
const kBackground = Color(0xFFFEFEFE);
const kSurface = Colors.white;
const kError = Colors.red;
const kOnPrimary = Colors.white;
const kOnSecondary = Colors.white;
const kOnBackground = Color(0xFF303030);
const kOnSurface = Color(0xFF303030);
const kOnError = Colors.white;

//Extras Colors
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecoverColor = Color(0xFF36C12C);

//Shadows
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.30);
final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);



const kTextLightColor = Color(0xFF959595);





ThemeData themeLight = ThemeData.from(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: kPrimaryColor,
    primaryVariant: kPrimaryVariant,
    secondary: kSecondaryColor,
    secondaryVariant: kSecondaryVariant,
    surface: kSurface,
    background: kBackground,
    error: kError,
    onSurface: kOnSurface,
    onBackground: kOnBackground,
    onError: kOnError,
    onSecondary: kOnSecondary,
    onPrimary: kOnPrimary,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.poppins(
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 46,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  ),
);

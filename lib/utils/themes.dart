import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PAppTheme {
  PAppTheme._();
  static ThemeData lightTheme = ThemeData(
    primarySwatch: const MaterialColor(0xFFdc143c, <int, Color>{
      50: Color(0x1Adc143c),
      100: Color(0x33dc143c),
      200: Color(0x4ddc143c),
      300: Color(0x66dc143c),
      400: Color(0x80dc143c),
      500: Color(0xFFdc143c),
      600: Color(0x99dc143c),
      700: Color(0xB3dc143c),
      800: Color(0xCCdc143c),
      900: Color(0xE6dc143c),
    }),
    primaryColor: Color(0xFFdc143c),
    brightness: Brightness.light,
  

    );


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    );


    
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFE66410),
          onPrimary: Colors.black,
          secondary: Colors.green,
          onSecondary: Colors.green,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(headline1: GoogleFonts.poppins()));
}

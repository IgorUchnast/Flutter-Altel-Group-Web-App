import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AGfonts {
  static final TextStyle subtitleFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 45,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle subsubtitleFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle tabBarFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle tabBarFontHover = GoogleFonts.roboto(
    color: Colors.orange,
    fontSize: 20.0,
    decoration: TextDecoration.underline,
    decorationThickness: 3,
    fontWeight: FontWeight.w500,
    decorationColor: Colors.orange,
  );
  static final TextStyle navigatorFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle navigatorHover = GoogleFonts.roboto(
    color: Colors.orange,
    fontSize: 15.0,
    // decoration: TextDecoration.underline,
    decorationThickness: 3,
    fontWeight: FontWeight.w500,
    decorationColor: Colors.orange,
  );
  static final TextStyle textFont = GoogleFonts.roboto(
    color: const Color.fromARGB(255, 48, 48, 48),
    fontSize: 20,
  );
  static final TextStyle animatedImageFont = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w900,
    backgroundColor: Colors.black.withOpacity(0.5),
  );
}

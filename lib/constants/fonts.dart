import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AGfonts {
  static final TextStyle subtitleFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 45,
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
  static final TextStyle textFont = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w900,
  );
  static final TextStyle animatedImageFont = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w900,
    backgroundColor: Colors.black.withOpacity(0.5),
  );
}

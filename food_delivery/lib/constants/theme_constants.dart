import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorBlack = Colors.black;
const colorOrange = Colors.deepOrange;
const colorGrey = Colors.grey;
const colorGreen = Color.fromRGBO(139, 195, 74, 0.95);

TextTheme defaultText = TextTheme(
  displayLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 96),
  displayMedium: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 60),
  displaySmall: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 48),
  headlineLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 34),
  headlineMedium: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 24),
  headlineSmall: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
  bodyLarge: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 16),
  bodyMedium: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 14),
  titleLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 16),
  titleMedium: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 14),
  labelLarge: GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14),
  bodySmall: GoogleFonts.nunito(fontWeight: FontWeight.normal, fontSize: 12),
);

EdgeInsets sidePadding = const EdgeInsets.symmetric(horizontal: 25);
double padding = 25;

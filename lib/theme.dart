import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme(){

  return TextTheme(
    headline1:GoogleFonts.openSans(fontSize: 18.0, color: Colors.black87),
    headline2: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black87, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black87),
    bodyText2: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    subtitle1: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black87),

  );

}

AppBarTheme appBarTheme(){
  return AppBarTheme(
      centerTitle: false,
      color: Colors.white,
      elevation: 0.0,
      titleTextStyle: textTheme().headline1,
      iconTheme: IconThemeData(color: Colors.black)
  );

}

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme(),
      appBarTheme: appBarTheme());
}

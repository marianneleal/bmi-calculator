import 'package:flutter/material.dart';

class BmiTheme {
  static ThemeData dark() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.green.shade800,
        primaryColor: Colors.teal.shade800,
        backgroundColor: Colors.teal.shade900,
        accentColor: Colors.amberAccent,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.amberAccent,
          backgroundColor: Colors.green.shade900,
        ));
  }

  static TextTheme lightTextTheme = TextTheme(
      //bodyText1: GoogleFonts.openSans(),
      );
}

import 'package:flutter/material.dart';

class BmiTheme {
  static ThemeData dark() {
    return ThemeData(
        scaffoldBackgroundColor: Color(0xFF0B4700),
        primaryColor: Colors.teal.shade800,
        backgroundColor: Colors.teal.shade900,
        accentColor: Colors.amberAccent,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.amberAccent,
          backgroundColor: Color(0xFF0c3d12),
        ));
  }

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 28.0,
      fontFamily: 'AlfaSlabOne',
    ),
    headline1: TextStyle(
      fontSize: 28.0,
      fontFamily: 'AlfaSlabOne',
      color: Colors.amberAccent,
    ),
  );
}

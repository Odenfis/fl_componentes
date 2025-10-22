

import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;
  static const Color textosBlancos = Colors.white;
  static final ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      elevation: 2,
    )
  );
  static final ThemeData myThemeDark = ThemeData(
    scaffoldBackgroundColor: Colors.blueGrey,
    primaryColor: primary,
    appBarTheme: AppBarTheme(      
      backgroundColor: Colors.redAccent,
      elevation: 2,
    )
  );
}
import 'package:flutter/material.dart';

///! This file contains all [Themes]
///! That will be using in our [main.dart]

class AppThemes{

  static ThemeData get myTheme{
    return ThemeData(
      fontFamily: 'Cairo',
      primarySwatch: Colors.orange,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          )
        ),
        foregroundColor: Colors.white, //title color of our appbar
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }

}
export './dimensions.dart';
export './colors.dart';

import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],

      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
        headline6:
            TextStyle(fontSize: 48.0, fontStyle: FontStyle.normal), //title
        //bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
      appBarTheme: const AppBarTheme(),
    );
  }
}

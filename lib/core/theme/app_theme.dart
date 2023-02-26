import 'package:flutter/material.dart';

enum AppTheme {
  Light("Light"),
  Dark("Dark");

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.Dark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],

  ),
  // AppTheme.redDark: ThemeData(
  //   appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.red[700],
  // ),
};

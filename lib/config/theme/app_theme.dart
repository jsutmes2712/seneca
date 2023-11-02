import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.white,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];



class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),
    inputDecorationTheme: InputDecorationTheme(
          filled: true, // Hacer el fondo del InputDecoration relleno
          fillColor: Colors.white.withOpacity(0.25), // Color de fondo translúcido
        ),
  );



}
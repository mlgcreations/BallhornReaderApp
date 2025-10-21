import 'package:flutter/material.dart';
import '../../features/reader/domain/entities/book_entity.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
  );
}

class ReaderThemeColors {
  final Color background;
  final Color text;
  final String name;

  const ReaderThemeColors({
    required this.background,
    required this.text,
    required this.name,
  });

  static const normal = ReaderThemeColors(
    background: Color(0xFFFBFBFB),
    text: Color(0xFF000000),
    name: 'Normal',
  );

  static const night = ReaderThemeColors(
    background: Color(0xFF121212),
    text: Color(0xFFB0B0B0),
    name: 'Noche',
  );

  static const sepia = ReaderThemeColors(
    background: Color(0xFFF8F1E3),
    text: Color(0xFF704214),
    name: 'Sepia',
  );

  static ReaderThemeColors fromTheme(ReaderTheme theme) {
    switch (theme) {
      case ReaderTheme.normal:
        return normal;
      case ReaderTheme.night:
        return night;
      case ReaderTheme.sepia:
        return sepia;
    }
  }
}
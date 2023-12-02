import 'package:flutter/material.dart';
import 'package:responsive_dashboard/theme/app_colors.dart';

class AppTheme {
  static const colors = AppColors();

  static ThemeData define() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Chivo',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24,
        ),
        displayMedium: TextStyle(
          fontSize: 20,
        ),
        displaySmall: TextStyle(
          fontSize: 16,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}

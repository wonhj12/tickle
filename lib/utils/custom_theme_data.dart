import 'package:flutter/material.dart';
import 'package:tickle/utils/palette.dart';

class CustomThemeData {
  static final ThemeData light = ThemeData(
    fontFamily: 'Pretendard',

    // Scaffold 테마
    scaffoldBackgroundColor: Palette.surface,

    // AppBar 테마
    appBarTheme: AppBarTheme(
      titleTextStyle: Palette.headline.copyWith(color: Palette.onSurface),
      foregroundColor: Palette.onSurface,
    ),

    // 앱 전체적인 테마
    colorScheme: const ColorScheme.light(
      primary: Palette.primary,
      onPrimary: Palette.surface,
      secondary: Palette.secondary,
      onSecondary: Palette.surface,
      surface: Palette.surface,
      onSurface: Palette.onSurface,
      onSurfaceVariant: Palette.onSurfaceVariant,
      error: Palette.error,
      onError: Palette.surface,
    ),
  );
}

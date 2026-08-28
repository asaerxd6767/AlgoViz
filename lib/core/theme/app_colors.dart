import 'package:flutter/material.dart';

abstract final class AppColors {
  static const Color surface = Color(0xFF10131A);
  static const Color surfaceBright = Color(0xFF363940);
  static const Color surfaceContainerLowest = Color(0xFF0B0E14);
  static const Color surfaceContainerLow = Color(0xFF191C22);
  static const Color surfaceContainer = Color(0xFF1D2026);
  static const Color surfaceContainerHigh = Color(0xFF272A31);
  static const Color surfaceContainerHighest = Color(0xFF32353C);
  static const Color surfaceVariant = Color(0xFF32353C);
  static const Color onSurface = Color(0xFFE1E2EB);
  static const Color onSurfaceVariant = Color(0xFFB9CACB);
  static const Color background = Color(0xFF10131A);
  static const Color onBackground = Color(0xFFE1E2EB);

  static const Color outline = Color(0xFF849495);
  static const Color outlineVariant = Color(0xFF3A494B);

  static const Color primary = Color(0xFFE1FDFF);
  static const Color onPrimary = Color(0xFF00363A);
  static const Color primaryContainer = Color(0xFF00F2FF);
  static const Color onPrimaryContainer = Color(0xFF006A71);
  static const Color inversePrimary = Color(0xFF00696F);
  static const Color primaryFixed = Color(0xFF74F5FF);
  static const Color primaryFixedDim = Color(0xFF00DBE7);
  static const Color onPrimaryFixed = Color(0xFF002022);
  static const Color onPrimaryFixedVariant = Color(0xFF004F54);
  static const Color surfaceTint = Color(0xFF00DBE7);

  static const Color secondary = Color(0xFFEBB2FF);
  static const Color onSecondary = Color(0xFF520071);
  static const Color secondaryContainer = Color(0xFFCE5DFF);
  static const Color onSecondaryContainer = Color(0xFF480064);
  static const Color secondaryFixed = Color(0xFFF8D8FF);
  static const Color secondaryFixedDim = Color(0xFFEBB2FF);
  static const Color onSecondaryFixed = Color(0xFF320047);
  static const Color onSecondaryFixedVariant = Color(0xFF74009F);

  static const Color tertiary = Color(0xFFE0FFE4);
  static const Color onTertiary = Color(0xFF00391D);
  static const Color tertiaryContainer = Color(0xFF00FA91);
  static const Color onTertiaryContainer = Color(0xFF006E3D);
  static const Color tertiaryFixed = Color(0xFF5BFFA1);
  static const Color tertiaryFixedDim = Color(0xFF00E383);
  static const Color onTertiaryFixed = Color(0xFF00210E);
  static const Color onTertiaryFixedVariant = Color(0xFF00522C);

  static const Color error = Color(0xFFFFB4AB);
  static const Color onError = Color(0xFF690005);
  static const Color errorContainer = Color(0xFF93000A);
  static const Color onErrorContainer = Color(0xFFFFDAD6);

  static const Color inverseSurface = Color(0xFFE1E2EB);
  static const Color onInverseSurface = Color(0xFF2E3037);

  static const Color accentSorted = Color(0xFF00FF9D);
  static const Color accentCompare = Color(0xFFFFE30A);
  static const Color accentSwap = Color(0xFFFF8A80);

  static ColorScheme get scheme => const ColorScheme(
        brightness: Brightness.dark,
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        inversePrimary: inversePrimary,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        tertiary: tertiary,
        onTertiary: onTertiary,
        tertiaryContainer: tertiaryContainer,
        onTertiaryContainer: onTertiaryContainer,
        error: error,
        onError: onError,
        errorContainer: errorContainer,
        onErrorContainer: onErrorContainer,
        surface: surface,
        onSurface: onSurface,
        onSurfaceVariant: onSurfaceVariant,
        outline: outline,
        outlineVariant: outlineVariant,
        shadow: Color(0xFF000000),
        scrim: Color(0xFF000000),
        inverseSurface: inverseSurface,
        onInverseSurface: onInverseSurface,
        surfaceTint: surfaceTint,
      );
}
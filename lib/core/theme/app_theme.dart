import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTheme {
  static const String monoFamily = 'JetBrains Mono';
  static const String sansFamily = 'Inter';

  static ThemeData get dark => _build(AppColors.scheme);

  static ThemeData _build(ColorScheme scheme) {
    final textTheme = _textTheme(scheme);
    const sharp = RoundedRectangleBorder(borderRadius: BorderRadius.zero);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      fontFamily: sansFamily,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        titleTextStyle: textTheme.headlineSmall,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: scheme.primaryContainer,
          foregroundColor: scheme.onPrimary,
          shape: sharp,
          textStyle: textTheme.labelMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: scheme.primaryContainer,
          side: const BorderSide(color: AppColors.primary),
          shape: sharp,
          textStyle: textTheme.labelMedium,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primaryContainer,
          shape: sharp,
          textStyle: textTheme.labelMedium,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceContainerLowest,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        hintStyle: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
        labelStyle: textTheme.labelMedium?.copyWith(color: scheme.onSurfaceVariant),
        prefixIconColor: scheme.onSurfaceVariant,
        suffixIconColor: scheme.onSurfaceVariant,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: const BorderSide(color: AppColors.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: const BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),
      ),
      cardTheme: const CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: AppColors.surfaceContainerLow,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: AppColors.outlineVariant),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceContainerHigh,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x8000F2FF)),
        ),
        titleTextStyle: textTheme.headlineSmall,
        contentTextStyle: textTheme.bodyMedium,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        selectedColor: AppColors.primaryContainer,
        disabledColor: AppColors.surfaceContainerHighest,
        labelStyle: textTheme.labelSmall,
        secondaryLabelStyle: textTheme.labelSmall,
        side: const BorderSide(color: AppColors.outline),
        shape: sharp,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.surfaceContainerHighest,
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: scheme.onSurface),
        shape: sharp,
        behavior: SnackBarBehavior.floating,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.surfaceContainerHigh,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: AppColors.outlineVariant),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: AppColors.surfaceContainerHigh,
        shape: sharp,
        textStyle: textTheme.bodyMedium?.copyWith(color: scheme.onSurface),
      ),
    );
  }

  static TextTheme _textTheme(ColorScheme scheme) {
    final onSurface = scheme.onSurface;
    final onVariant = scheme.onSurfaceVariant;
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: monoFamily,
        fontSize: 40,
        fontWeight: FontWeight.w700,
        height: 1.2,
        letterSpacing: -0.8,
        color: onSurface,
      ),
      headlineMedium: TextStyle(
        fontFamily: monoFamily,
        fontSize: 32,
        fontWeight: FontWeight.w600,
        height: 1.2,
        color: onSurface,
      ),
      headlineSmall: TextStyle(
        fontFamily: monoFamily,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: onSurface,
      ),
      titleMedium: TextStyle(
        fontFamily: monoFamily,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: onSurface,
      ),
      bodyLarge: TextStyle(
        fontFamily: sansFamily,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: onVariant,
      ),
      bodyMedium: TextStyle(
        fontFamily: sansFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: onVariant,
      ),
      bodySmall: TextStyle(
        fontFamily: sansFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: onVariant,
      ),
      labelLarge: TextStyle(
        fontFamily: monoFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: onSurface,
      ),
      labelMedium: TextStyle(
        fontFamily: monoFamily,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.0,
        letterSpacing: 0.6,
        color: onSurface,
      ),
      labelSmall: TextStyle(
        fontFamily: monoFamily,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.0,
        letterSpacing: 0.55,
        color: onSurface,
      ),
    );
  }
}
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// The class that holds the configuration for the app theme.
///
/// It uses the [FlexColorScheme] package to create the theme.
///
/// This class is a singleton, for the purpose of providing a single
/// instance throughout its usage in the app.
/// (I think it serves no purpose to have multiple instances - if for
/// any reason it's usage is needed in multiple places)
class AppTheme {
  /// Creates an instance of [AppTheme].
  ///
  /// If an instance of [AppTheme] already exists, the existing instance
  /// is returned.
  factory AppTheme() => _instance;

  AppTheme._internal();

  static final AppTheme _instance = AppTheme._internal();

  /// Returns the dark theme which is based on [FlexScheme.deepBlue].
  ThemeData get dark {
    return FlexThemeData.dark(
      useMaterial3: true,
      scheme: FlexScheme.deepBlue,
    );
  }

  /// Returns the light theme which is based on [FlexScheme.deepBlue].
  ThemeData get light {
    return FlexThemeData.light(
      useMaterial3: true,
      scheme: FlexScheme.deepBlue,
    );
  }
}

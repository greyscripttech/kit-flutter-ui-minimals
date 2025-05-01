import 'package:flutter/material.dart';

/// A reusable custom snackbar (toast) for showing quick messages.
///
/// Usage:
/// ```dart
/// CustomSnackbar.show(
///   context,
///   message: 'Action successful!',
///   backgroundColor: Colors.green,
/// );
/// ```
class CustomSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
    Duration duration = const Duration(seconds: 2),
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      duration: duration,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

import 'package:flutter/material.dart';

/// A minimal animated progress bar for the Minimal UI Kit.
///
/// Usage:
/// ```dart
/// CustomProgressBar(progress: 0.6)
/// ```
class CustomProgressBar extends StatelessWidget {
  final double progress; // Value between 0.0 to 1.0

  const CustomProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 10,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
        valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

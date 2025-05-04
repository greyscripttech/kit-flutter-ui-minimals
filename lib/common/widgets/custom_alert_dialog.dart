import 'package:flutter/material.dart';

/// A reusable custom alert dialog with title, message, and action buttons.
///
/// Usage:
/// ```dart
/// CustomAlertDialog.show(
///   context,
///   title: 'Confirm Delete',
///   message: 'Are you sure you want to delete this item?',
///   onConfirm: () {
///     // handle confirm
///   },
/// );
/// ```
class CustomAlertDialog {
  static void show(
    BuildContext context, {
    required String title,
    required String message,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    String confirmText = 'OK',
    String cancelText = 'Cancel',
  }) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              if (onCancel != null) onCancel();
            },
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              if (onConfirm != null) onConfirm();
            },
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }
}

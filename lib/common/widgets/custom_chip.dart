import 'package:flutter/material.dart';

/// A minimal customizable Chip (Pill Button) for the Minimal UI Kit.
///
/// Usage:
/// ```dart
/// CustomChip(label: 'Fitness', selected: true, onSelected: (bool selected) {})
/// ```
class CustomChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const CustomChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
      selectedColor: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
      labelStyle: TextStyle(
        color: selected ? Colors.white : Theme.of(context).textTheme.bodyLarge?.color,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}

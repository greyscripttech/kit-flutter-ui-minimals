import 'package:flutter/material.dart';

/// A reusable custom slider with min, max, and value display.
///
/// Usage:
/// ```dart
/// CustomSlider(
///   value: _currentValue,
///   min: 0,
///   max: 100,
///   onChanged: (value) => setState(() => _currentValue = value),
/// )
/// ```
class CustomSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  const CustomSlider({
    Key? key,
    required this.value,
    this.min = 0,
    this.max = 100,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: (max - min).toInt(),
          label: value.round().toString(),
          onChanged: onChanged,
        ),
        Text(
          'Selected Value: ${value.toStringAsFixed(0)}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

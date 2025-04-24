import 'package:flutter/material.dart';

class AnimatedCard extends StatefulWidget {
  final String title;
  const AnimatedCard({super.key, required this.title});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _expanded = !_expanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: _expanded ? 200 : 100,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(widget.title, style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
    );
  }
}

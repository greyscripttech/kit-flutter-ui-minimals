import 'package:flutter/material.dart';

class CustomTabSwitcher extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int> onTabChanged;

  const CustomTabSwitcher({super.key, required this.tabs, required this.onTabChanged});

  @override
  State<CustomTabSwitcher> createState() => _CustomTabSwitcherState();
}

class _CustomTabSwitcherState extends State<CustomTabSwitcher> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: List.generate(widget.tabs.length, (index) {
          final bool isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
                widget.onTabChanged(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.tabs[index],
                  style: TextStyle(
                    color: isSelected
                        ? Colors.white
                        : Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

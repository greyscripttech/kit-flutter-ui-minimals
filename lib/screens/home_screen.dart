import 'package:flutter/material.dart';
import '../common/widgets/animated_card.dart';
import '../common/widgets/glass_container.dart';
import '../common/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minimal UI Kit')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            AnimatedCard(title: 'Animated Card'),
            SizedBox(height: 16),
            GlassContainer(child: Text('Glassmorphic Container')),
            SizedBox(height: 16),
            CustomButton(label: 'Click Me'),
          ],
        ),
      ),
    );
  }
}

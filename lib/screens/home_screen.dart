import 'package:flutter/material.dart';
import '../common/widgets/animated_card.dart';
import '../common/widgets/glass_container.dart';
import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_modal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minimal UI Kit')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const AnimatedCard(title: 'Animated Card'),
            const SizedBox(height: 16),
            const GlassContainer(child: Text('Glassmorphic Container')),
            const SizedBox(height: 16),
            const CustomButton(label: 'Click Me'),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Open Modal',
              onPressed: () {
                CustomModal.show(context, child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello from Modal!', style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: 10),
                    const Text('You can put any custom content here.'),
                    const SizedBox(height: 20),
                    CustomButton(label: 'Close', onPressed: () => Navigator.pop(context)),
                  ],
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

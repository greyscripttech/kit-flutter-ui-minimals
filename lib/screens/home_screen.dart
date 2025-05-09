import 'package:flutter/material.dart';
import '../common/widgets/animated_card.dart';
import '../common/widgets/glass_container.dart';
import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_modal.dart';
import '../common/widgets/custom_toggle.dart';
import '../common/widgets/custom_loader.dart';
import '../common/widgets/custom_grid_card.dart';
import '../common/widgets/custom_tab_switcher.dart';
import '../common/widgets/custom_progress_bar.dart';
import '../common/widgets/custom_chip.dart';
import '../common/widgets/custom_snackbar.dart';
import '../common/widgets/custom_alert_dialog.dart';
import '../common/widgets/custom_slider.dart'; // ✅ New Import

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
            const SizedBox(height: 24),
            const Text('Toggle Switch Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            StatefulBuilder(
              builder: (context, setState) {
                bool isSwitched = false;
                return CustomToggle(
                  value: isSwitched,
                  onChanged: (value) => setState(() => isSwitched = value),
                );
              },
            ),
            const SizedBox(height: 24),
            const Text('Loader Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const CustomLoader(),
            const SizedBox(height: 24),
            const Text('Card Grid Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CustomGridCard(title: 'Health', icon: Icons.favorite),
                CustomGridCard(title: 'Finance', icon: Icons.attach_money),
                CustomGridCard(title: 'Work', icon: Icons.work),
                CustomGridCard(title: 'Travel', icon: Icons.flight),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Tab Switcher Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            CustomTabSwitcher(
              tabs: const ['Home', 'Work', 'Travel'],
              onTabChanged: (index) {
                debugPrint('Selected Tab: $index');
              },
            ),
            const SizedBox(height: 24),
            const Text('Progress Bar Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const CustomProgressBar(progress: 0.6),
            const SizedBox(height: 24),
            const Text('Chip Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            StatefulBuilder(
              builder: (context, setState) {
                int selectedIndex = 0;
                final List<String> categories = ['All', 'Fitness', 'Business', 'Travel'];

                return Wrap(
                  spacing: 8,
                  children: List.generate(categories.length, (index) {
                    return CustomChip(
                      label: categories[index],
                      selected: selectedIndex == index,
                      onSelected: (bool selected) {
                        if (selected) {
                          setState(() => selectedIndex = index);
                        }
                      },
                    );
                  }),
                );
              },
            ),
            const SizedBox(height: 24),
            const Text('Snackbar Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            CustomButton(
              label: 'Show Snackbar',
              onPressed: () {
                CustomSnackbar.show(
                  context,
                  message: 'This is a custom snackbar!',
                  backgroundColor: Colors.blueAccent,
                );
              },
            ),
            const SizedBox(height: 24),
            const Text('Alert Dialog Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            CustomButton(
              label: 'Show Alert',
              onPressed: () {
                CustomAlertDialog.show(
                  context,
                  title: 'Confirm Action',
                  message: 'Are you sure you want to proceed?',
                  onConfirm: () {
                    CustomSnackbar.show(context, message: 'Confirmed!');
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            const Text('Slider Example', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            StatefulBuilder(
              builder: (context, setState) {
                double sliderValue = 50;
                return CustomSlider(
                  value: sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() => sliderValue = value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

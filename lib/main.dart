import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MinimalUIKit());

class MinimalUIKit extends StatelessWidget {
  const MinimalUIKit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimal UI Kit',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

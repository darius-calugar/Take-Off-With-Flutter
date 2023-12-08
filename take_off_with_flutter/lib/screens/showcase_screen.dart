import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_off_with_flutter/repositories/theme_repository.dart';
import 'package:take_off_with_flutter/widgets/navigation_drawer.dart';

class ShowcaseScreen extends StatelessWidget {
  const ShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeRepository = context.watch<ThemeRepository>();

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Showcase'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.light_mode,
              size: 32,
            ),
            const SizedBox(
              width: 8,
            ),
            Switch(
              value: themeRepository.isDarkTheme,
              onChanged: (_) => _onThemeSwitchChanged(context),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.dark_mode,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }

  void _onThemeSwitchChanged(BuildContext context) {
    final themeRepository = context.read<ThemeRepository>();
    themeRepository.toggle();
  }
}

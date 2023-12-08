import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Image.network(
              'https://picsum.photos/id/50/500',
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: const Text('Counter'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.pushReplacementNamed('/counter');
            },
          ),
          ListTile(
            title: const Text('Showcase'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.pushReplacementNamed('/showcase');
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_off_with_flutter/repositories/theme_repository.dart';
import 'package:take_off_with_flutter/screens/counter_screen.dart';
import 'package:take_off_with_flutter/screens/showcase_screen.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeRepository = context.watch<ThemeRepository>();

    return MaterialApp(
      theme: themeRepository.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/counter',
      routes: {
        '/counter': (context) => const CounterScreen(),
        '/showcase': (context) => const ShowcaseScreen(),
      },
    );
  }
}

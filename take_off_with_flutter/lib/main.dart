import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_off_with_flutter/app.dart';
import 'package:take_off_with_flutter/repositories/theme_repository.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeRepository(),
      child: const App(),
    ),
  );
}

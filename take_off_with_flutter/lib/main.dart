import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_off_with_flutter/app.dart';
import 'package:take_off_with_flutter/blocs/counter/counter_bloc.dart';
import 'package:take_off_with_flutter/blocs/theme/theme_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const App(),
    ),
  );
}

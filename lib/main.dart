import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polysleep/bloc/nav_bloc.dart';
import 'package:polysleep/pages/home.dart';
 import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBloc>(create: (context) => NavBloc()),
      ],
      child: const ShadApp(
        title: 'Polysleep',
        home: HomePage(title: 'Polysleep'),
      ),
    );
  }
}


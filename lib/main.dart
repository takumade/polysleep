import 'package:flutter/material.dart';
import 'package:polysleep/data/sleep_patterns.dart';
import 'package:polysleep/widgets/cycle_card.dart';
 import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShadApp(
      title: 'Polysleep',
      home: MyHomePage(title: 'Polysleep'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
 
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: ListView.builder(
          itemCount: patterns.length,
          itemBuilder: (context, index) {
          var pattern = patterns[index];
          return CycleCard(
            pattern: pattern,
          );
        }),
      )
    );
  }
}

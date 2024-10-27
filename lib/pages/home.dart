import 'package:flutter/material.dart';
import 'package:polysleep/data/sleep_patterns.dart';
import 'package:polysleep/nav/bottom_nav.dart';
import 'package:polysleep/widgets/cycle_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
      ),
      bottomNavigationBar: CustomBottomNavigationBar()
    );
  }
}

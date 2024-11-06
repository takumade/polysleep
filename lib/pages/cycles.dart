import 'package:flutter/material.dart';
import 'package:polysleep/nav/bottom_nav.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CyclesPage extends StatelessWidget {
  final List<String> cycles = [
    'Cycle 1',
    'Cycle 2',
    'Cycle 3',
    'Cycle 4',
    'Cycle 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cycles'),
     
      ),
      body: ListView.builder(
        itemCount: cycles.length,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.bedtime),
            title: Text("Core Sleep", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('23:00 - 05:00'),
            trailing: Icon(Icons.edit_notifications_outlined),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

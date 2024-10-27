import 'package:flutter/material.dart';

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
        title: Text('Cycles'),
      ),
      body: ListView.builder(
        itemCount: cycles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cycles[index]),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CyclesPage(),
  ));
}
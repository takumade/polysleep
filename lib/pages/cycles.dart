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
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cycles.length,
            itemBuilder: (context, index) {
              return Card(
                 shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: BorderSide(
      color: Colors.grey.withOpacity(0.2),
    ),
  ),
                elevation: 1,
                child: const ListTile(
                  leading: Icon(Icons.bedtime),
                  title: Text("Core Sleep", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('23:00 - 05:00'),
                  trailing: Icon(Icons.edit_notifications_outlined),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          ShadButton.destructive(
  child: const Text('Clear Cycles'),
  onPressed: () {},
)
        ],
        )
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

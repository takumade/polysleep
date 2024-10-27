import 'package:flutter/material.dart';
import 'package:polysleep/models/sleep_patterns.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CycleCard extends StatelessWidget {

 final SleepPattern pattern;

 const CycleCard({super.key, required this.pattern});

 @override
 Widget build(BuildContext context) {
   final theme = ShadTheme.of(context);
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: ShadCard(
         width: 350,
         title: Text(pattern.name, style: theme.textTheme.h4),
         description: Text(pattern.description),
         footer: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             ShadButton(
               child: const Text("Create Cycle"),
               onPressed: () {},
             ),
           ],
         ),
        
       ),
   );
 }
}
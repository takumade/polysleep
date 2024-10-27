

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polysleep/bloc/nav_bloc.dart';
import 'package:polysleep/pages/cycles.dart';
import 'package:polysleep/pages/home.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, int>(

      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state,
          onTap: (value) {
            context.read<NavBloc>().add(ChangeNavEvent(value));

            if (value == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage(
                  title: "Home",
                )),
              );
            } else if (value == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CyclesPage()),
              );
            } },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm), 
              label: 'Cycles',    
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        );
      }
    );
  }
}
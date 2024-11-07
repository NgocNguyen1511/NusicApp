import 'package:flutter/material.dart';
import 'package:music_app/widgets/mini_player.dart';

import '../screens/home_screen.dart';
import '../screens/library_screen.dart';
import '../screens/search_screen.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: [
          HomeScreen(),
          SearchScreen(),
          LibraryScreen(),
        ][selectedIndex],
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MiniPlayer(),
            NavigationBar(
              selectedIndex: selectedIndex,
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.search),
                  label: 'search',
                ),
                NavigationDestination(
                  icon: Icon(Icons.my_library_music),
                  label: 'library',
                ),
              ],
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

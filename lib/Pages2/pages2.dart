import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/Pages2/home_cubit.dart';
import 'package:music_app/widgets/mini_player.dart';

import '../screens/home_screen.dart';
import '../screens/library_screen.dart';
import '../screens/search_screen.dart';

class Pages2 extends StatefulWidget {
  const Pages2({super.key});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  final PageController controller = PageController();
  late final HomeCubit _cubit;

  @override
  void initState() {
    _cubit = HomeCubit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: PageView(
                controller: controller,
                children: <Widget>[
                  HomeScreen(),
                  SearchScreen(),
                  LibraryScreen(),
                ],
              ),
              bottomNavigationBar: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MiniPlayer(),
                  BottomNavigationBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.library_music),
                        label: 'Library',
                      ),
                    ],
                    type: BottomNavigationBarType.fixed,
                    currentIndex: state.selectedIndex,
                    selectedItemColor: Colors.black,
                    onTap: (index) {
                      _cubit.changeTab(index);
                      controller.jumpToPage(index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
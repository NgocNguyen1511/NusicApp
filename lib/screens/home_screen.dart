import 'package:flutter/material.dart';
import '../widgets/category_list.dart';
import '../widgets/mixed_list.dart';
import '../widgets/recent_single_list.dart';
import '../widgets/regular_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good afternoon'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryList(),
            RegularList(),
            SizedBox(height: 20),
            MixedList(),
            SizedBox(height: 20),
            RecentSingleList(),
          ],
        ),
      ),
    );
  }
}

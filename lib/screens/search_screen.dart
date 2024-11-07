import 'package:flutter/material.dart';

import '../widgets/search_box.dart';
import '../widgets/search_category.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(),
        Expanded( // Bọc SearchCategory trong Expanded
          child: SearchCategory(),
        ),
      ],
    );
  }
}

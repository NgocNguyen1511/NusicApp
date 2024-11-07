import 'package:flutter/material.dart';

class SearchCategory extends StatefulWidget {
  const SearchCategory({super.key});

  @override
  State<SearchCategory> createState() => _SearchCategoryState();
}

class _SearchCategoryState extends State<SearchCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Browse',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            childAspectRatio: 5 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              buildCategoryContainer('Top songs'),
              buildCategoryContainer('ST Hits'),
              buildCategoryContainer('ST Hits'),
              buildCategoryContainer('Top songs'),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCategoryContainer(String title) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/top_songs.jpg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

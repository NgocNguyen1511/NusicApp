import 'package:flutter/material.dart';
import 'category_item.dart'; // Import widget mới tạo

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 2.5,
      children: [
        CategoryItem(title: 'Top songs', imageUrl: 'assets/images/top_songs.jpg'),
        CategoryItem(title: 'Popular Artists', imageUrl: 'assets/images/top_songs.jpg'),
        CategoryItem(title: 'New Releases', imageUrl: 'assets/images/top_songs.jpg'),
        CategoryItem(title: 'Playlists', imageUrl: 'assets/images/top_songs.jpg'),
        CategoryItem(title: 'Chill Beats', imageUrl: 'assets/images/top_songs.jpg'),
        CategoryItem(title: 'Party Mix', imageUrl: 'assets/images/top_songs.jpg'),
      ],
    );
  }
}

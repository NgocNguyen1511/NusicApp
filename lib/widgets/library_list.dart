  import 'package:flutter/material.dart';

  class LibraryList extends StatefulWidget {
    const LibraryList({super.key});

    @override
    State<LibraryList> createState() => _LibraryListState();
  }

  class _LibraryListState extends State<LibraryList> {
    final int itemCount = 5;

    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: itemCount,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: 100,
                    child: ClipRRect(

                      child: Image.asset(
                        'assets/images/top_songs.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Title $index', // Thay bằng tên thực tế của mục
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      );
    }
  }

import 'package:flutter/material.dart';

class RecentSingleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RecentSingle',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer(''),
                SizedBox(
                  width: 10,
                ),
                buildContainer(''),
                SizedBox(
                  width: 10,
                ),
                buildContainer(''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(String title) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          child: ClipOval(child: Image.asset('assets/images/top_songs.jpg')),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.blue,
          ),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 16),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RegularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Regular',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer('1'),
                SizedBox(width: 10),
                buildContainer('2'),
                SizedBox(width: 10),
                buildContainer('3'),
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
          width: 200,
          height: 200,
          child: Image.asset('assets/images/top_songs.jpg'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
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

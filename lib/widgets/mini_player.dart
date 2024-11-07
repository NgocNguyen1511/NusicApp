import 'package:flutter/material.dart';

import '../screens/media_player_screen.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}


class _MiniPlayerState extends State<MiniPlayer> {
  @override
  Widget build(BuildContext context) {
    // if(MiniPlayerState.currentSong == null){
    //   return SizedBox.shrink();
    //
    // }
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MediaPlayerScreen()),
        );
      },
      child: Container(
        height: 50,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/top_songs.jpg',
              fit: BoxFit.cover,
            ),
            Text(
              'title',
              style: const TextStyle(color: Colors.white, fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            Icon(Icons.play_arrow,),
          ],
        ),
      ),
    );
  }
}
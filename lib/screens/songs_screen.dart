import 'package:flutter/material.dart';
import 'package:thaalam_music_app/widgets/header_song_widget.dart';
import 'package:thaalam_music_app/widgets/song_list_tile.dart';
import 'package:thaalam_music_app/widgets/trending_song_slider.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              HeaderSongWidget(),
              const SizedBox(
                height: 22,
              ),
              TrendingSongSlider(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Air',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Local',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              SongListTile(),
              SongListTile(),
              SongListTile(),
              SongListTile(),
              SongListTile(),
              SongListTile(),
        
            ],
          ),
        ),
      ),
    ));
  }
}

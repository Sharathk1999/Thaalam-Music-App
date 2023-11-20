import 'package:flutter/material.dart';
import 'package:thaalam_music_app/widgets/header_playscreen_widget.dart';
import 'package:thaalam_music_app/widgets/play_volume_container.dart';
import 'package:thaalam_music_app/widgets/song_control_button.dart';
import 'package:thaalam_music_app/widgets/song_details.dart';

class PlaySongsScreen extends StatefulWidget {
  const PlaySongsScreen({super.key});

  @override
  State<PlaySongsScreen> createState() => _PlaySongsScreenState();
}

class _PlaySongsScreenState extends State<PlaySongsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
               
                HeaderPlayScreenWidget(),
                 
                PlayVolumeContainer(),
                 SizedBox(
                  height: 10,
                ),
                SongDetailsWidget(),
                 SizedBox(
                  height: 10,
                ),
                
                 SizedBox(
                  height: 10,
                ),
                SongControlButton(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:thaalam_music_app/widgets/header_playscreen_widget.dart';
import 'package:thaalam_music_app/widgets/play_volume_container.dart';
import 'package:thaalam_music_app/widgets/song_control_button.dart';
import 'package:thaalam_music_app/widgets/song_details.dart';

class PlaySongsScreen extends StatelessWidget {

  
  const PlaySongsScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const  EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
               
              const  HeaderPlayScreenWidget(),
                 
               const PlayVolumeContainer(
                
                ),
             const    SizedBox(
                  height: 10,
                ),
                SongDetailsWidget(
                
                ),
              const   SizedBox(
                  height: 10,
                ),
                
              const   SizedBox(
                  height: 10,
                ),
              const  SongControlButton(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

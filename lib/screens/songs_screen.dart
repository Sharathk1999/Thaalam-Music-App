import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/colors.dart';
import 'package:thaalam_music_app/controller/song_controller.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';
import 'package:thaalam_music_app/screens/play_songs_screen.dart';
import 'package:thaalam_music_app/widgets/header_song_widget.dart';
import 'package:thaalam_music_app/widgets/song_list_tile.dart';
import 'package:thaalam_music_app/widgets/trending_song_slider.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     SongController songController = Get.put(SongController());
     SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return  Scaffold(
        body: SafeArea(
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
             const HeaderSongWidget(),
              const SizedBox(
                height: 22,
              ),
           const   TrendingSongSlider(),
              const SizedBox(
                height: 15,
              ),
             Obx(() =>  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      songController.isStorageSong.value = false;
                    },
                    child: Text(
                      'Air',
                      style: TextStyle(
                        fontSize: 20,
                        color:  songController.isStorageSong.value ? primaryColor.withOpacity(0.4) : whiteColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      songController.isStorageSong.value = true;
                    },
                    child: Text(
                      'Local',
                      style: TextStyle(
                        fontSize: 20,
                        color:  songController.isStorageSong.value ? whiteColor :primaryColor.withOpacity(0.4) ,
                      ),
                    ),
                  ),
                ],
              ),),
              const SizedBox(height: 10,),
            Obx(() =>  songController.isStorageSong.value ? 
             Column(
              // ignore: invalid_use_of_protected_member
              children: songController.storageSongsList.value.map((e) => SongListTile(
                songName: e.title,
                onTap: () {
                  songPlayerController.playStorageSongs(e.data);
                  Get.to(PlaySongsScreen());
                },
              ),).toList(),
             ) :const Column(
              children: [
       
     
              
              ],
             ),),
        
            ],
          ),
        ),
      ),
    ));
  }
}

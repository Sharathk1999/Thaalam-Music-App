import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/colors.dart';
import 'package:thaalam_music_app/controller/song_controller.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';

class SongControlButton extends StatelessWidget {
  const SongControlButton({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    SongController songController = Get.put(SongController());
    return Column(
      children: [
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${songPlayerController.currentTime}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primaryColor.withOpacity(0.4),
                ),
              ),
              Expanded(
                child: Obx(
                  () => Slider(
                    thumbColor: whiteColor,
                    value: songPlayerController.sliderVal.value
                        .clamp(0.0, songPlayerController.sliderVal.value),
                    onChanged: (value) {
                      songPlayerController.sliderVal.value = value;

                      Duration songPos = Duration(seconds: value.toInt());

                      songPlayerController.changeSongSliderPos(songPos);
                    },
                    min: 0,
                    max: songPlayerController.sliderMaxVal.value,
                  ),
                ),
              ),
              Text(
                "${songPlayerController.totalTime}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primaryColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                songController.playPrevSong();
              },
              icon: const Icon(
                FontAwesomeIcons.backward,
              ),
            ),
            Obx(
              () => songPlayerController.isPlaying.value
                  ? InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        songPlayerController.pauseSong();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: primaryColor.withOpacity(0.3)),
                        padding: const EdgeInsets.all(10),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.pause,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  : InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        songPlayerController.resumeSong();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: primaryColor.withOpacity(0.3)),
                        padding: const EdgeInsets.all(10),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.play,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
            ),
            IconButton(
              onPressed: () {
                songController.playNextSong();
              },
              icon: const Icon(
                FontAwesomeIcons.forward,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Obx(() =>  IconButton(
              onPressed: () {
                songPlayerController.playSongShuffled();
              },
              icon: Icon(
                FontAwesomeIcons.shuffle,
                color:songPlayerController.isShuffled.value ?primaryColor : primaryColor.withOpacity(0.3),
              ),
            ),),
            Obx(() => IconButton(
              onPressed: () {
                songPlayerController.setSongLoop();
              },
              icon: Icon(
                FontAwesomeIcons.repeat,
                color:songPlayerController.isLoop.value ? primaryColor: primaryColor.withOpacity(0.3),
              ),
            ),),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.book,
                color: primaryColor.withOpacity(0.3),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.heartCircleBolt,
                color: primaryColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

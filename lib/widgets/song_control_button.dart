import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/colors.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';

class SongControlButton extends StatelessWidget {
  const SongControlButton({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1:05"),
            Text(
              "/",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text("4:00"),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
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
                        child:const Center(
                          child:  Icon(
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
              onPressed: () {},
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
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.shuffle,
                color: primaryColor.withOpacity(0.3),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.repeat,
                color: primaryColor.withOpacity(0.3),
              ),
            ),
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

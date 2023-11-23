import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:thaalam_music_app/config/colors.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';

class SongDetailsWidget extends StatelessWidget {
  const SongDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.play,
              color: whiteColor.withOpacity(0.5),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Played 10 times',
              style: TextStyle(
                fontSize: 16,
                color: whiteColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Obx(
                () => Text(
                  songPlayerController.songTitle.value,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Icon(
                  FontAwesomeIcons.download,
                  color: whiteColor,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Obx(
                () => Text(
                  songPlayerController.artistName.value,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    color: whiteColor.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

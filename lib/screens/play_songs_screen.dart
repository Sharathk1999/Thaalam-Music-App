import 'package:flutter/material.dart';
import 'package:thaalam_music_app/widgets/header_playscreen_widget.dart';
import 'package:thaalam_music_app/widgets/play_volume_container.dart';
import 'package:thaalam_music_app/widgets/song_control_button.dart';
import 'package:thaalam_music_app/widgets/song_details.dart';
import 'package:thaalam_music_app/widgets/song_wave_widget.dart';

class PlaySongsScreen extends StatefulWidget {
  const PlaySongsScreen({super.key});

  @override
  State<PlaySongsScreen> createState() => _PlaySongsScreenState();
}

class _PlaySongsScreenState extends State<PlaySongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              HeaderPlayScreenWidget(),
              const SizedBox(
                height: 5,
              ),
              PlayVolumeContainer(),
              const SizedBox(
                height: 15,
              ),
              SongDetailsWidget(),
              const SizedBox(
                height: 20,
              ),
              SongWaveWidget(),
              const SizedBox(
                height: 20,
              ),
              SongControlButton(),

            ],
          ),
        ),
      ),
    );
  }
}

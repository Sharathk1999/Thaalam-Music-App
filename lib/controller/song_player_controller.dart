import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';


class SongPlayerController extends GetxController {
  final audioPlayer = AudioPlayer();

  RxBool isPlaying = false.obs;
  RxString currentTime = '0'.obs;
  RxString totalTime = '0'.obs;
  RxDouble sliderVal = 0.0.obs;
  RxDouble sliderMaxVal = 0.0.obs;
  RxString songTitle = ''.obs;
  RxString artistName = ''.obs;
  RxBool isLoop = false.obs;
  RxBool isShuffled = false.obs;
  RxDouble volLevel = 0.2.obs;

  void playStorageSongs(SongModel song) async {
    songTitle.value = song.title;
    artistName.value =
        song.artist! == "<unknown>" ? "Artist Unknown" : song.artist!;
    await audioPlayer.setAudioSource(
      AudioSource.uri(
        Uri.parse(
          song.data,
        ),
      ),
    );

    audioPlayer.play();

    updatePosition();
    isPlaying.value = true;
  }

  void setSongLoop() async {
    if (isLoop.value) {
      await audioPlayer.setLoopMode(LoopMode.off);
    } else {
      await audioPlayer.setLoopMode(LoopMode.one);
    }

    isLoop.value = !isLoop.value;
  }

  void playSongShuffled() async {
    if (isShuffled.value) {
      await audioPlayer.setShuffleModeEnabled(false);
    } else {
      await audioPlayer.setShuffleModeEnabled(true);
    }
    isShuffled.value = !isShuffled.value;
  }

  void resumeSong() async {
    isPlaying.value = true;
    await audioPlayer.play();
  }

  void pauseSong() async {
    await audioPlayer.pause();
    isPlaying.value = false;
  }

  void updatePosition() async {
    try {
      audioPlayer.durationStream.listen((dur) {
        totalTime.value = dur.toString().split(".")[0];
        sliderMaxVal.value = dur!.inSeconds.toDouble();
      });
      audioPlayer.positionStream.listen((pos) {
        currentTime.value = pos.toString().split(".")[0];
        sliderVal.value = pos.inSeconds.toDouble();
      });

      
    } catch (e) {
      print("Error from updatePosition => $e");
    }
  }

  void changeSongSliderPos(Duration position) {
    audioPlayer.seek(position);
  }

  void changeVol(double volume) {
    volLevel.value = volume;
    audioPlayer.setVolume(volLevel.value);
  }
}

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SongPlayerController extends GetxController {
  final audioPlayer = AudioPlayer();
  RxBool isPlaying = false.obs;

  void playStorageSongs(String songUrl) async {
    await audioPlayer.setAudioSource(
      AudioSource.uri(
        Uri.parse(
          songUrl,
        ),
      ),
    );

    audioPlayer.play();
    isPlaying.value = true;
  }

  void resumeSong()async{
    isPlaying.value = true;
    await audioPlayer.play();
     
  }

  void pauseSong()async{
    await audioPlayer.pause();
    isPlaying.value = false;
  }
}

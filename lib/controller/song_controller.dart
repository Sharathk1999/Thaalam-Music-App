import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';

class SongController extends GetxController {
  SongPlayerController songPlayerController = Get.put(SongPlayerController());
  final audioQuery = OnAudioQuery();
  RxList<SongModel> storageSongsList = <SongModel>[].obs;
  RxBool isStorageSong = false.obs;
  RxInt currentSongIdx = 0.obs;

  @override
  void onInit() {
    super.onInit();
    storagePermission();
  }

  void getSongsFromStorage() async {
    if (await Permission.storage.status.isGranted) {
      storageSongsList.value = await audioQuery.querySongs(
        ignoreCase: true,
        orderType: OrderType.ASC_OR_SMALLER,
        sortType: null,
        uriType: UriType.EXTERNAL,
      );
    }
  }

  void storagePermission() async {
    try {
      var permission = await Permission.storage.request();
      if (permission.isGranted) {
        print('Permission granted');
        getSongsFromStorage();
      } else {
        print('Permission denied');
        await Permission.storage.request();
      }
    } catch (e) {
      print('Permission error => $e');
    }
  }

  void currentSongId(int songId) {
    var index = 0;
    storageSongsList.forEach(
      (song) {
        if (song.id == songId) {
          currentSongIdx.value = index;
        }
        index++;
      },
    );
    print("😬😬😬😬 song ID => $songId");
    print("😬😬😬😬 song INDEX => $index");
  }

  void playNextSong() {
    int songsListLength = storageSongsList.length;
    currentSongIdx.value = currentSongIdx.value + 1;
    if (currentSongIdx.value < songsListLength) {
      SongModel nextSong = storageSongsList[currentSongIdx.value];
      songPlayerController.playStorageSongs(nextSong);
    }
  }
   void playPrevSong() {
    int songsListLength = storageSongsList.length;
    
    if (currentSongIdx.value != 0) {
      currentSongIdx.value = --currentSongIdx.value;
      if (currentSongIdx.value < songsListLength) {
      SongModel nextSong = storageSongsList[currentSongIdx.value];
      songPlayerController.playStorageSongs(nextSong);
    }
    }
    
  }

}

 
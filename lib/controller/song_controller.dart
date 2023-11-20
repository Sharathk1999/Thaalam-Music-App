import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SongController extends GetxController {
  final audioQuery = OnAudioQuery();
  RxList<SongModel> storageSongsList = <SongModel>[].obs;
  RxBool isStorageSong = false.obs;

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

  void storagePermission()async{
    try {
      var permission = await Permission.storage.request();
      if (permission.isGranted) {
        print('Permission granted');
        getSongsFromStorage();
      }else{
        print('Permission denied');
        await Permission.storage.request();
      }
    } catch (e) {
      print('Permission error => $e');
    }
  }
}

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerControllerCustom extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isInitialized = false.obs;
  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.asset(
      "assets/songReel.mp4"
    )..initialize().then((_) {
        videoPlayerController.play();
        videoPlayerController.setLooping(true);
        isInitialized.value = true;
      });
  }

}

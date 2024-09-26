import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerControllerCustom extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isInitialized = false.obs;
  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://github.com/adityaandhale30/AutoRobo-IOT/blob/main/Maze-Runner%20Winner%20%F0%9F%A5%87%20.mp4'),
    )..initialize().then((_) {
        videoPlayerController.play();
        videoPlayerController.setLooping(true);
        isInitialized.value = true;
      });
  }

}

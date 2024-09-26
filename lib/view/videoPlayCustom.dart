import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming/controller/videoPlayer_Controller.dart';
import 'package:video_player/video_player.dart';

class VideoPlayCustom extends StatelessWidget {
  const VideoPlayCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPlayerControllerCustom controller =
        Get.put(VideoPlayerControllerCustom());

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.back();
      }),
      body: Center(
        child: Obx(
          () => controller.isInitialized.value
              ? AspectRatio(
                  aspectRatio:1,
                      // controller.videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(controller.videoPlayerController),
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

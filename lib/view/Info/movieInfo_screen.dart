import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streaming/view/Info/Widget/sliverList.dart';
import 'package:movie_streaming/view/videoPlayCustom.dart';

class MovieInfoScreen extends StatelessWidget {
  const MovieInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
      body: CustomScrollView(
        slivers: [
          
          SliverAppBar(
            floating: true,
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: screenHeight / 1.7,
            flexibleSpace: Stack(
              children: [
                SizedBox(
                  height: screenHeight / 1.5,
                  width: screenWidth,
                  child: ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                        ],
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      "assets/images/movieInfo.png",
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.lighten,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 16, top: 80),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.desktop_windows_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(54, 53, 236, 1),
                              Color.fromRGBO(137, 42, 236, 1)
                            ],
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 24,
                  top: screenHeight / 2.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Los Miserables",
                        style: GoogleFonts.secularOne(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "1H 52MIN  13+   2002  4K   UHD",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 16,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(const VideoPlayCustom());
                        },
                        child: const Icon(
                          Icons.play_circle_outlined,
                          color: Colors.white,
                          size: 56,
                        ),
                      ),
                      Gap(screenWidth / 1.7),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 34,
                      ),
                      const Gap(10),
                      const Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                        size: 34,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SliverListCustom(),
        ],
      ),
    );
  }
}

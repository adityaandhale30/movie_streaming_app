import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streaming/controller/drawer_Controller.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var controller = Get.put(DrawerControllerCustom());
    return Stack(
      children: [
        Container(),
        SizedBox(
          height: screenHeight / 1.5,
          width: screenWidth,
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                //  tileMode: TileMode.clamp,

                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 1),
                ],
              ).createShader(bounds);
            },
            child: Image.asset(
              "assets/images/home.png",
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.lighten,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Row(
            children: [
              GestureDetector(
                onTap: controller.openDrawer,
                child: const Icon(
                  Icons.menu_outlined,
                  color: Colors.white,
                  size: 34,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 34,
              ),
              Container(
                height: 34,
                width: 34,
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
          top: screenHeight / 2.9,
          right: screenWidth / 60,
          child: Column(
            children: [
              Text(
                "Movie+",
                style: GoogleFonts.secularOne(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                "VIKINGOS",
                style: GoogleFonts.secularOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const Gap(24),
              Text(
                "to marathon",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const Gap(6),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Eget\n       dictum est penatibus eget nunc. Enim\n               pellentesque venenatis enim.",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 50),
                child: PageViewDotIndicator(
                  currentItem: 0,
                  count: 6,
                  unselectedColor: const Color.fromRGBO(217, 217, 217, 1),
                  selectedColor: Colors.white,
                  size: const Size(12, 12),
                  unselectedSize: const Size(10, 10),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

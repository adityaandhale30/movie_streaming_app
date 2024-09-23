import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                      const Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                        size: 34,
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
                          unselectedColor:
                              const Color.fromRGBO(217, 217, 217, 1),
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "My List",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(10),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 155,
              width: screenWidth,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, idx) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          margin: const EdgeInsets.only(right: 10),
                          color: Colors.red,
                          child: Image.asset(
                            "assets/images/myList$idx.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          "Los miserables",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "Only on Movie+",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(10),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 245,
              width: screenWidth,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, idx) {
                  return Container(
                    height: 220,
                    width: 130,
                    margin: const EdgeInsets.only(right: 16),
                    color: Colors.red,
                    child: Image.asset(
                      "assets/images/moviePlus$idx.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const Gap(16),
            Center(
              child: Column(
                children: [
                  Text(
                    "Welcome to Movie+",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 38,
                    width: screenWidth,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                        left: 48, right: 48, bottom: 32, top: 24),
                    color: const Color.fromRGBO(137, 42, 236, 0.3),
                    child: Text(
                      "EXPLORE",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

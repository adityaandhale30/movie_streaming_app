import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieInfoScreen extends StatelessWidget {
  const MovieInfoScreen({super.key});

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
                      const Icon(
                        Icons.play_circle_outlined,
                        color: Colors.white,
                        size: 56,
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
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Ultrices quis quam sit amet. Id duis affgorae dignissim non suspendisse nulla leo.",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12, bottom: 8),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Commodo mirtadorp consequat phasellus metus.",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.7),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "Additional features",
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
                "More Similar content",
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
                    child: Image.asset(
                      "assets/images/similar$idx.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "    Cast and crew",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          size: 34,
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                        )),
                  ],
                ),
                // const Gap(10),
                Row(
                  children: [
                    const Gap(10),
                    Text(
                      """   Jean Valjean
    Fantine
    Javert
    Cosette
    Marius Pontmercy""",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      """      Jean Valjean
       Fantine
       Javert
       Cosette
       Marius Pontmercy""",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 24),
                  child: Column(
                    children: List.generate(4, (idx) {
                      return Row(
                        children: [
                          Text(
                            "Producers",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 32,
                              color: Color.fromRGBO(255, 255, 255, 0.7),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

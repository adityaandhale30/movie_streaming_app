import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerRight,
          children: [
            SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    //  tileMode: TileMode.clamp,
                    stops: [0.3, 0.5],
                    colors: <Color>[
                      Color.fromRGBO(99, 97, 108, 1),
                      Color.fromRGBO(255, 255, 255, 1),
                    ],
                  ).createShader(bounds);
                },
                child: Image.asset(
                  "assets/images/splash.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 56, right: 56, bottom: 50),
                    child: Text(
                      """WE HAVE THE BEST
            MOVIES""",
                      style: GoogleFonts.secularOne(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: PageViewDotIndicator(
                      currentItem: 0,
                      count: 3,
                      unselectedColor: const Color.fromRGBO(255, 255, 255, 0.5),
                      selectedColor: Colors.white,
                      size: const Size(12, 12),
                      unselectedSize: const Size(10, 10),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 35, bottom: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Sed egestas mi hac faucibus vitae commodo. Tempor sagittis elementum suspendisse est convallis morbi. Quam viverra sed bibendum id felis dictum ",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromRGBO(251, 243, 189, 1),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 45,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 24),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 15,
                          offset: Offset(2, 2),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(54, 53, 236, 1),
                          Color.fromRGBO(137, 42, 236, 1),
                        ],
                      ),
                    ),
                    child: Text(
                      "Suscribete a Movie+",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromRGBO(250, 243, 221, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

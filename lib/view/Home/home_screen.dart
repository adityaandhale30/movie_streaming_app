import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streaming/controller/drawer_Controller.dart';
import 'package:movie_streaming/view/Home/Widget/movieposter_stack.dart';
import 'package:movie_streaming/view/Home/Widget/movies_list1.dart';
import 'package:movie_streaming/view/drawerCustom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var controller = Get.put(DrawerControllerCustom());
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const DrawerCustom(),
      backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MoviePoster(),
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
            const MovieList1(),
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
                        left: 48, right: 48, bottom: 20, top: 24),
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "New Releases",
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
              height: 130,
              width: screenWidth,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, idx) {
                  return Container(
                    width: 220,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: Image.asset(
                      "assets/images/newRelease$idx.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                "Top Movies",
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
              height: 220,
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
                      "assets/images/topMovies$idx.png",
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
                    "Our Top 10",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                  ),
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
                ],
              ),
            ),
            const Gap(16),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 230,
              width: screenWidth,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, idx) {
                  return Stack(
                    children: [
                      Container(
                        height: 230,
                        width: 130,
                        padding: const EdgeInsets.only(left: 6),
                        margin: const EdgeInsets.only(right: 16),
                        child: Image.asset(
                          "assets/images/plusTop$idx.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        child: Text(
                          "#${idx + 1}",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}

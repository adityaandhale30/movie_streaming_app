import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streaming/view/Info/movieInfo_screen.dart';

class MovieList1 extends StatelessWidget {
  const MovieList1({super.key});

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Container(
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
                        GestureDetector(
                          onTap: () {
                            Get.to(()=>const MovieInfoScreen());
                          },
                          child: Container(
                            height: 130,
                            width: 130,
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/myList$idx.png",
                              fit: BoxFit.cover,
                            ),
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
            ) ;
  }
}


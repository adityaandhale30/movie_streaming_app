import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverListCustom extends StatelessWidget {
  const SliverListCustom({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
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
            height: 170,
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
                        width: 220,
                        margin: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/images/feature$idx.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          Text(
                            "Los miserables:Extra",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const Gap(70),
                          const Icon(
                            Icons.download_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                      Text(
                        "5 MIN     13+",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 0.7),
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
    );
  }
}

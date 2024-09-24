import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
      width: 220,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.close_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
            Column(
              children: List.generate(6, (idx) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 24, top: 24),
                  child: Text(
                    "Series",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                );
              }),
            ),
            const Divider(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(
                    "Genders",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromRGBO(255, 255, 255, 0.726),
                  )
                ],
              ),
            ),
            const Divider(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
            const Gap(30),
            Image.asset("assets/images/movieLogo.png")
          ],
        ),
      ),
    );
  }
}

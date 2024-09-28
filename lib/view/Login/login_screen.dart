import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streaming/view/Home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        //physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    //  tileMode: TileMode.clamp,
                    stops: [0.1, 0.3, 0.6, 1],
                    colors: <Color>[
                      Color.fromRGBO(54, 53, 236, 0.8),
                      Color.fromRGBO(137, 42, 236, 0.8),
                      Color.fromRGBO(137, 42, 236, 0.8),
                      Color.fromRGBO(0, 0, 0, 0.9)
                    ],
                  ).createShader(bounds);
                },
                child: Image.asset(
                  "assets/images/login.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 26, right: 16, top: screenHeight / 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 32,
                    color: Colors.white,
                  ),
                  const Gap(16),
                  Text(
                    "Create\nAccount",
                    style: GoogleFonts.secularOne(
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(36),
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  TextField(
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        hintText: "e.g. example@mail.com",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(63, 30, 136, 1),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(137, 42, 236, 1),
                            width: 2,
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(137, 42, 236, 1),
                            width: 2,
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(137, 42, 236, 1),
                            width: 2,
                          ),
                        )),
                  ),
                  const Gap(32),
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: Colors.white,
                      contentPadding: const EdgeInsets.all(16),
                      hintText: "e.g. Example2006",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(63, 30, 136, 1),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 42, 236, 1),
                          width: 2,
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 42, 236, 1),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const Gap(32),
                  Text(
                    "Confirm Password",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(8),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      suffixIconColor: Colors.white,
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Color.fromRGBO(63, 30, 136, 1),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 42, 236, 1),
                          width: 2,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 42, 236, 1),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.crop_square,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "   I agree to the Terms & Privacy Policy",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Gap(40),
                  GestureDetector(
                    onTap: () {
                      Get.off(()=>const HomeScreen());
                    },
                    child: Container(
                      width: screenWidth,
                      height: 45,
                      margin: const EdgeInsets.only(right: 8),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(54, 53, 236, 1),
                            Color.fromRGBO(137, 42, 236, 1),
                          ],
                        ),
                      ),
                      child: Text(
                        "Create account",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
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

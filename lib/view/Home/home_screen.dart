import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(),
                SizedBox(
                  height: screenHeight,
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
                Text("").
              ],
            ),
          ],
        ),
      ),
    );
  }
}

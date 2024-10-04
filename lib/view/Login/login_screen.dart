import 'package:flutter/material.dart';
import 'package:movie_streaming/view/Login/Widget/loginTextfield.dart';


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
            const LoginTextField(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_streaming/view/LandingPage/landingPage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPageScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(10, 7, 30, 1),
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30,
            width: 50,
            color: Colors.blueAccent,
          ),
          Container(
            height: 30,
            width: 50,
            color: Colors.blueAccent,
          ),
          Container(
            height: 30,
            width: 50,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

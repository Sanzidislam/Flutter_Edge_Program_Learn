import 'package:flutter/material.dart';

class CircleAvatarGuide extends StatelessWidget {
  const CircleAvatarGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: const Color.fromARGB(255, 68, 255, 137),
          backgroundImage: AssetImage("assets/images/Jonny.png"),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}

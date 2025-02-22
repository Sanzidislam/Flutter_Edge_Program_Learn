// Image Widget
import 'package:flutter/material.dart';

class ImageGuide extends StatelessWidget {
  const ImageGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jonny The Monkey"),),
      body: Center(
        child: Image.asset(
          'assets/images/image.png',
          fit: BoxFit.contain,
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.blue.withOpacity(.1),
          colorBlendMode: BlendMode.darken,
        ),
),
);
}
}
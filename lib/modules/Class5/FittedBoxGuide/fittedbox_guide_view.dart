// FittedBox Widget
import 'package:flutter/material.dart';

class FittedBoxGuide extends StatelessWidget {
  const FittedBoxGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FittedBox Guide"),),
      body: Center(
        child: Container(
          height: 100,
          width: 122,
          color: Colors.orange,
          child: FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: Text(
              'FittedBox Example',
              style: TextStyle(color: Colors.white, ),
            ),
          ),
        ),
      ),
    );
  }
}

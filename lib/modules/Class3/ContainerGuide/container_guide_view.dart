import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Example')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: const Color.fromARGB(255, 17, 184, 134),
          child: Text('This is a Container Example!'),
        ),
      ),
    );
  }
}
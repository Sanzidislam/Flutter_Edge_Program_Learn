// ListTile Widget
import 'package:flutter/material.dart';

class ListTileGuide extends StatelessWidget {
  const ListTileGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Icon(Icons.person, color: const Color.fromARGB(255, 243, 33, 103)),
        title: Text('Jonny Bhai'),
        subtitle: Text('Doctor, Astronauts, Teacher, Engineer, Plumber, Police'),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        tileColor: Colors.blue.shade50,
        onTap: () {
          print('ListTile tapped!');
        },
),
);
}
}
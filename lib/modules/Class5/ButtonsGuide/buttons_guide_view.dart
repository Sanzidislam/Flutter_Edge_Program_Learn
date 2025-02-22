import 'package:flutter/material.dart';

class ButtonsGuide extends StatelessWidget {
  const ButtonsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Guide'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //add scroll view
      
        children: [
          // Elevated Button
          ElevatedButton(
            onPressed: () {
              print('Button Pressed!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 193, 159, 193), // Background color
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text('Click Me'),
          ),

          // Icon Button
          IconButton(
            onPressed: () {
              print('Icon Button Pressed!');
            },
            icon: Icon(Icons.thumb_up, color: Colors.blue),
            tooltip: 'Like',
          ),

          //TextButton
          TextButton(onPressed: () {}, child: Text('Text Button')),

          // Outlined Button
          OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),

          // add more buttons here
          ElevatedButton(onPressed: (){}, child: Text('Elevated')),
          IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down, color: Colors.red), tooltip: 'Dislike'),
          TextButton(onPressed: (){}, child: Text('Text Button'))
        ],
      ),
    );
  }
}

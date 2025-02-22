import 'package:flutter/material.dart';

class CardGuide extends StatelessWidget {
  const CardGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Wizard'),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 8,
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Widget of Oze',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink, // Corrected Colors.pink
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'This is an example of a Card with elevation and rounded corners.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CardGuide(),
  ));
}

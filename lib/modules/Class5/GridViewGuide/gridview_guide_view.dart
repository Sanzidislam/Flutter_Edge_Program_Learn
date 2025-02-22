// GridView.builder Widget
import 'package:flutter/material.dart';

class GridViewGuide extends StatelessWidget {
  const GridViewGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Guide"),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // clicking leads to another page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scaffold(
                  appBar: AppBar(title: Text('Grid Item ${index + 1}')),
                  body: Center(
                    child: Text('This is Grid Item ${index + 1}'),
                  ),
                )),
              );
            },
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Text('Grid Item ${index + 1}',
                    style: TextStyle(color: Colors.white)
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

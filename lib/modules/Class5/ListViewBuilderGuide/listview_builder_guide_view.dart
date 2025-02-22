// ListView.builder Widget
import 'package:flutter/material.dart';

class ListViewBuilderGuide extends StatelessWidget {
  const ListViewBuilderGuide({super.key});

  @override
  Widget build(BuildContext context) {
    // app bar
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Guide'),
      ),
      body: ListView.builder(
        itemCount: 120,
        scrollDirection: Axis.vertical,
        reverse: false,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          // return ListTile(
          //   leading: CircleAvatar(child: Text('${index + 1}')),
          //   title: Text('List Item ${index + 1}'),
          //   subtitle: Text('Subtitle ${index + 1}'),
          // );
          return Container(
            height: 40,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text("Item ${index}"),
          );
        },
      ),
    );
  }
}

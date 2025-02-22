import 'package:flutter/material.dart';

class ListViewGuide extends StatelessWidget {
  const ListViewGuide({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
        title: const Text('List View Card'),
      ),
        body: ListView.builder(
      itemCount: 15,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      reverse: false,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.check_circle),
          title: Text('Item ${index + 1}'),
          subtitle: Text('Subtitle ${index + 1}'),
        );
      },
));
}
}
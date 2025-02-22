import 'package:flutter/material.dart';
import 'package:first_project/modules/Class3/ContainerGuide/container_guide_view.dart';
import 'package:first_project/modules/Class3/Row_view.dart/row_guide_view.dart';
import 'package:first_project/modules/Class3/ScaffoldGuide/Scaffold_guide_view.dart';
import 'package:first_project/modules/Class4/CardGuide/card_guide_view.dart';
import 'package:first_project/modules/Class4/CircleAvatarGuide/circle_avatar_guide.dart';
import 'package:first_project/modules/Class4/ContainerDetailsGuide/Container_details_guide_view.dart';
import 'package:first_project/modules/Class4/ImageGuide/image_guide_view.dart';
import 'package:first_project/modules/Class4/ListTitleGuide/list_title_guide.dart';
import 'package:first_project/modules/Class4/ListViewGuide/List_View_Guide.dart';
import 'package:first_project/modules/Class5/ButtonsGuide/buttons_guide_view.dart';
import 'package:first_project/modules/Class5/ExpandedGuide/expanded_guide_view.dart';
import 'package:first_project/modules/Class5/FittedBoxGuide/fittedbox_guide_view.dart';
import 'package:first_project/modules/Class5/GridViewCountGuide/gridview_count_guide_view.dart';
import 'package:first_project/modules/Class5/GridViewGuide/gridview_guide_view.dart';
import 'package:first_project/modules/Class5/ListViewBuilderGuide/listview_builder_guide_view.dart';

class HomeScreen extends StatelessWidget {
  // List of pages and their titles
  final List<Map<String, dynamic>> pages = [
    {'title': 'Scaffold Example', 'page': ScaffoldExample()},
    {'title': 'Container Example', 'page': ContainerExample()},
    {'title': 'Row Example', 'page': RowExample()},
    {'title': 'Container Details', 'page':  ContainerDetailsGuide()},
    {'title': 'Card Guide', 'page':  CardGuide()},
    {'title': 'ListView Guide', 'page':  ListViewGuide()},
    {'title': 'ListTitle Guide', 'page':  ListTileGuide()},
    {'title': 'Image Guide', 'page':  ImageGuide()},
    {'title': 'Circle Avatar Guide', 'page':  CircleAvatarGuide()},
    
    {'title': 'Buttons_Guide', 'page':  ButtonsGuide()},
    {'title': 'Expanded_Guide', 'page':  ExpandedGuide()},
    {'title': 'FittedBox_Guide', 'page':  FittedBoxGuide()},
    {'title': 'GridView_CountGuide', 'page':  GridViewCountGuide()},
    {'title': 'GridView_Guide', 'page':  GridViewGuide()},
    {'title': 'ListView_BuilderGuide', 'page':  ListViewBuilderGuide()},
    
    // {'title': 'Column Example', 'page': ColumnExample()},
    // {'title': 'Text Example', 'page': TextExample()},
    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets List')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']),
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}
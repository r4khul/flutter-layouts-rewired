import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';
import 'package:layouts_practice/apps/mount-app/widgets/app_header.dart';
import 'package:layouts_practice/apps/mount-app/widgets/app_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.terrain, size: 30),
        centerTitle: true,
        foregroundColor: mainColor,
      ),
      drawer: Drawer(
        backgroundColor: mainColor,
        child: Container( 
          margin: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, size: 60),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppHeader(), AppSearch()
        ],
      ),
    );
  }
}

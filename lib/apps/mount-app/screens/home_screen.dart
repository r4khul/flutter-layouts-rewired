import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

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
      drawer: Drawer(),
      body: Column(children: [
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/models/mount.dart';

class DetailsHeader extends StatelessWidget {
  final MountModel item;
  const DetailsHeader({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        bottomRight: Radius.circular(45),
        bottomLeft: Radius.circular(45),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(item.path, fit: BoxFit.cover),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  item.location,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            bottom: 25,
            left: 25,
          ),
          AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Icon(Icons.terrain, color: Colors.white, size: 32),
            centerTitle: true,
            actions: [
              Container(
                padding: EdgeInsetsGeometry.all(10),
                child: Icon(Icons.pending, color: Colors.white, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
